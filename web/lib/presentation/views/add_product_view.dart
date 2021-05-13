import 'package:flutter/material.dart';
import 'package:sp_web/presentation/models/add_product_view_model.dart';
import '../../common/extensions.dart';

class AddProductView extends StatelessWidget {
  final AddProductViewModel addProductViewModel;

  const AddProductView({
    Key key,
    @required this.addProductViewModel,
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
          ],
        ),
      ),
    );
  }
}
