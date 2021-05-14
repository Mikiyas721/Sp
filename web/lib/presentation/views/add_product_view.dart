import 'package:flutter/material.dart';
import 'package:sp_web/presentation/models/add_product_view_model.dart';
import 'package:sp_web/presentation/widgets/border_text_field.dart';
import 'package:sp_web/presentation/widgets/my_action_button.dart';
import 'package:sp_web/presentation/widgets/my_dropdown.dart';
import 'package:sp_web/presentation/widgets/picker.dart';
import '../../common/common.dart';

class AddProductView extends StatelessWidget {
  final AddProductViewModel addProductViewModel;
  final void Function(String value) onProductName;
  final void Function(String value) onBrandName;
  final void Function(String value) onCategory;
  final void Function(String value) onQuantity;
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
        height: 600,
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
              errorMessage: addProductViewModel.productNameError,
              labelText: 'Brand Name',
              onChanged: onProductName,
            ),
            15.vSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyDropdown(
                  items: categoryList,
                  onChanged: onCategory,
                  currentItem: addProductViewModel.category,
                  hint: 'category',
                ),
                5.hSpace,
                BorderTextField(
                  keyBoardType: TextInputType.number,
                  labelText: 'quantity',
                  onChanged: onQuantity,
                  width: 120,
                )
              ],
            ),
            15.vSpace,
            BorderTextField(
              errorMessage: addProductViewModel.descriptionError,
              labelText: 'Description',
              onChanged: onDescription,
              maxLines: 5,
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
                  10.hSpace,
                  Text(
                    'Please enter product image here',
                    style: context.caption,
                  )
                ],
              ),
            ),
            50.vSpace,
            MyActionButton(label: 'Add', onPressed: onAdd),
            30.vSpace
          ],
        ),
      ),
    );
  }
}
