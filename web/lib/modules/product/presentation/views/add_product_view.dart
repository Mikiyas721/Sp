import 'package:flutter/material.dart';
import 'package:sp_web/modules/product/presentation/models/add_product_view_model.dart';
import 'package:sp_web/common/widgets/border_text_field.dart';
import 'package:sp_web/common/widgets/my_action_button.dart';
import 'package:sp_web/common/widgets/my_dropdown.dart';
import 'package:sp_web/common/widgets/picker.dart';
import '../../../../common/common.dart';

class AddProductView extends StatelessWidget {
  final AddProductViewModel addProductViewModel;
  final void Function(String value) onProductName;
  final void Function(String value) onBrandName;
  final void Function(String value) onCategory;
  final void Function(String value) onQuantity;
  final void Function(String value) onPrice;
  final void Function(String value) onDescription;
  final void Function(DateTime dateTime) onManDate;
  final void Function(DateTime dateTime) onExpDate;
  final VoidCallback onAddImage;
  final VoidCallback onAdd;

  const AddProductView({
    Key key,
    @required this.addProductViewModel,
    @required this.onProductName,
    @required this.onBrandName,
    @required this.onCategory,
    @required this.onQuantity,
    @required this.onPrice,
    @required this.onDescription,
    @required this.onExpDate,
    @required this.onManDate,
    @required this.onAddImage,
    @required this.onAdd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      elevation: 5,
      child: Container(
        width: 380,
        height: 650,
        padding: 65.hPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            15.vSpace,
            Text(
              'New Product',
              style: context.headline6,
            ),
            30.vSpace,
            BorderTextField(
              errorMessage: addProductViewModel.productNameError,
              labelText: 'Product Name',
              onChanged: onProductName,
            ),
            15.vSpace,
            BorderTextField(
              errorMessage: addProductViewModel.brandNameError,
              labelText: 'Brand Name',
              onChanged: onBrandName,
            ),
            15.vSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BorderTextField(
                  errorMessage: addProductViewModel.priceError,
                  keyBoardType: TextInputType.numberWithOptions(decimal: true),
                  labelText: 'price',
                  onChanged: onPrice,
                  width: 120,
                ),
                5.hSpace,
                BorderTextField(
                  errorMessage: addProductViewModel.quantityError,
                  keyBoardType: TextInputType.number,
                  labelText: 'quantity',
                  onChanged: onQuantity,
                  width: 120,
                )
              ],
            ),
            15.vSpace,
            MyDropdown(
              items: CategoryExtension.categoryList,
              onChanged: onCategory,
              currentItem: addProductViewModel.category,
              hint: 'category',
            ),
            15.vSpace,
            BorderTextField(
              errorMessage: addProductViewModel.descriptionError,
              labelText: 'Description',
              keyBoardType: TextInputType.multiline,
              onChanged: onDescription,
              minLines: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Picker(
                  hint: 'Man Date',
                  initialDate: addProductViewModel.manDate,
                  firstDate: DateTime.now().subtract(Duration(days: 4000)),
                  lastDate: DateTime.now(),
                  onDateTime: onManDate,
                ),
                20.hSpace,
                Picker(
                  hint: 'Exp Date',
                  initialDate: addProductViewModel.expDate,
                  firstDate: DateTime.now().subtract(Duration(days: 100)),
                  lastDate: DateTime.now().add(Duration(days: 4000)),
                  onDateTime: onExpDate,
                )
              ],
            ),
            Padding(
              padding: 20.vPadding,
              child: Row(
                children: [
                  Text(
                    'Select\nimage',
                    style: context.caption,
                  ),
                  10.hSpace,
                  CircleAvatar(
                    backgroundColor: Colors.black26,
                    child: InkWell(
                      onTap: onAddImage,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  20.hSpace,
                  /*addProductViewModel.imageData==null?Container(height:0.0,width:0.0):CircleAvatar(backgroundImage: FileImage(File.fromRawPath(addProductViewModel.imageData)),)*/
                ],
              ),
            ),
            50.vSpace,
            MyActionButton(
                label: 'Add',
                isLoading: addProductViewModel.isAdding,
                onPressed: onAdd),
            30.vSpace
          ],
        ),
      ),
    );
  }
}
