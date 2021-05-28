import 'package:flutter/material.dart';
import 'package:sp_web/presentation/models/add_product_view_model.dart';
import 'package:sp_web/presentation/views/add_product_view.dart';
import 'package:sp_web/common/widgets/my_outline_button.dart';

class AddProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 20,
              right: 45,
              child: MyOutlineButton(
                label: 'Dashboard',
                width: 150,
                onPressed: () {
                  print('Not disabled');
                  Navigator.pushReplacementNamed(context, '/dashboard');
                },
              )),
          SingleChildScrollView(
            child: Center(
              child: AddProductView(addProductViewModel: AddProductViewModel(),onCategory: (d){},onAdd: (){},),
            ),
          ),
        ],
      ),
    );
  }
}
