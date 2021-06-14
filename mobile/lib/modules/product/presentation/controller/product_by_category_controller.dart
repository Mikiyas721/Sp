import 'package:flutter/material.dart';
import 'package:sp_client/common/controller/controller.dart';
import 'package:sp_client/common/mixins/toast_mixin.dart';
import 'package:sp_client/injection.dart';
import 'package:sp_client/modules/product/application/load_by_category/load_by_category_bloc.dart';
import 'package:sp_client/modules/product/domain/use_cases/fetch_by_category.dart';
import 'package:sp_client/modules/product/presentation/model/category_view_model.dart';

class ProductByCategoryController extends BlocViewModelController<
    LoadByCategoryBloc,
    LoadByCategoryEvent,
    LoadByCategoryState,
    CategoryProductsViewModel> with ToastMixin {
  final BuildContext context;
  final String category;

  ProductByCategoryController(
    this.context,
    this.category,
  ) : super(getIt.get<LoadByCategoryBloc>(), true);

  @override
  CategoryProductsViewModel mapStateToViewModel(LoadByCategoryState s) {
    return CategoryProductsViewModel(
      list: s.products
          .map((e) => CategoryProductViewModel(
                itemName: e.productName.name,
                quantity: e.quantity.quantity,
                imageUrl: e.imageName.imageName,
                date: e.createdAt,
              ))
          .toList(),
      isLoading: s.isLoading,
      loadingError: s.loadFailure.getOrElse(() => null)?.message,
    );
  }

  void loadInitial() async {
    bloc.add(LoadByCategoryIsLoadingEvent());
    final result = await getIt.get<FetchByCategory>().execute(category);
    result.fold((l) {
      bloc.add(LoadByCategoryFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(LoadByCategorySucceededEvent(r));
    });
  }
}
