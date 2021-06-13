import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:sp_web/common/controller/controller.dart';
import 'package:sp_web/common/mixins/toast_mixin.dart';
import 'package:sp_web/injection.dart';
import 'package:sp_web/modules/product/domain/entities/product.dart';
import 'package:sp_web/modules/product/domain/use_cases/add_product.dart';
import 'package:sp_web/modules/product/presentation/models/add_product_view_model.dart';


import '../../application/add_product/add_product_bloc.dart';
import '../../../../common/extensions.dart';
import 'dart:typed_data';

class AddProductController extends BlocViewModelController<AddProductBloc,
    AddProductEvent, AddProductState, AddProductViewModel> with ToastMixin {
  final BuildContext context;

  AddProductController(this.context) : super(getIt.get<AddProductBloc>(), true);

  @override
  AddProductViewModel mapStateToViewModel(AddProductState s) {
    return AddProductViewModel(
      imageUrl: s.imageName.getOrElse(() => null)?.imageName,
      imageData: s.imageData.getOrElse(() => null),
      productName: s.productName.getOrElse(() => null)?.name,
      productNameError: s.hasSubmitted
          ? s.productName.fold((l) => l.message, (r) => null)
          : null,
      brandName: s.brandName.getOrElse(() => null)?.name,
      brandNameError: s.hasSubmitted
          ? s.brandName.fold((l) => l.message, (r) => null)
          : null,
      category: s.productCategory
          .getOrElse(() => null)
          ?.getString()
          ?.getOrElse(() => null),
      description: s.description.getOrElse(() => null)?.description,
      descriptionError: s.hasSubmitted
          ? s.description.fold((l) => l.message, (r) => null)
          : null,
      quantity: s.quantity.getOrElse(() => null)?.quantity,
      quantityError: s.hasSubmitted
          ? s.quantity.fold((l) => l.message, (r) => null)
          : null,
      price: s.price.getOrElse(()=>null)?.price,
      priceError: s.hasSubmitted
          ? s.price.fold((l) => l.message, (r) => null)
          : null,
      expDate: s.expDate.getOrElse(() => null),
      manDate: s.manDate.getOrElse(() => null),
      isAdding: s.hasRequested,
    );
  }

  void onProductName(String value) {
    bloc.add(AddProductProductNameChangedEvent(value));
  }

  void onBrandName(String value) {
    bloc.add(AddProductBrandNameChangedEvent(value));
  }

  void onCategory(String value) {
    bloc.add(AddProductProductCategoryChangedEvent(value));
  }

  void onQuantity(String value) {
    bloc.add(AddProductQuantityChangedEvent(value));
  }
  void onPrice(String value) {
    bloc.add(AddProductPriceChangedEvent(value));
  }

  void onDescription(String value) {
    bloc.add(AddProductDescriptionChangedEvent(value));
  }

  void onExpDate(DateTime value) {
    bloc.add(AddProductExpDateChangedEvent(value));
  }

  void onManDate(DateTime value) {
    bloc.add(AddProductManDateChangedEvent(value));
  }

  void onAddImage() async{
   Uint8List fromPickerBytes = await ImagePickerWeb.getImage(outputType: ImageType.bytes);
   bloc.add(AddProductImageChangedEvent('${DateTime.now().toIso8601String().split('.')[0]}.jpg',fromPickerBytes));
  }

  void onAdd() {
    bloc.add(AddProductHasSubmittedEvent());
    final product = Product.createForAdd(
      imageName:bloc.state.imageName.getOrElse(() => null),
      imageFile: bloc.state.imageData.getOrElse(() => null),
      productName: bloc.state.productName.getOrElse(() => null),
      brandName: bloc.state.productName.getOrElse(() => null),
      category: bloc.state.productCategory.getOrElse(() => null),
      quantity: bloc.state.quantity.getOrElse(() => null),
	  price: bloc.state.price.getOrElse(()=>null),
      description: bloc.state.description.getOrElse(() => null),
      manDate: bloc.state.manDate.getOrElse(() => null),
      expDate: bloc.state.expDate.getOrElse(() => null),
    );
    product.fold(() {
      toastError("Invalid inputs");
    }, (a) async {
      bloc.add(AddProductHasRequestedEvent());
      final response = await getIt.get<AddProduct>().execute(a);
      response.fold((l) {
        bloc.add(AddProductRequestedFailedEvent(l));
        toastError(l.message);
      }, (r) {
        bloc.add(AddProductRequestedSucceededEvent());
        toastSuccess("Successfully added product");
        //TODO reset text fields
      });
    });
  }
}
