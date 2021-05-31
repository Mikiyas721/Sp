import 'package:flutter/material.dart';
import 'package:sp_web/common/controller/controller_provider.dart';
import 'package:sp_web/modules/product/presentation/controller/add_product_controller.dart';
import 'package:sp_web/modules/product/presentation/models/add_product_view_model.dart';
import 'package:sp_web/modules/product/presentation/views/add_product_view.dart';
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
              child: ViewModelBuilder.withController<AddProductViewModel,
                      AddProductController>(
                  create: () => AddProductController(context),
                  builder: (context, controller, model) {
                    return AddProductView(
                      addProductViewModel: model,
                      onProductName: controller.onProductName,
                      onBrandName: controller.onBrandName,
                      onCategory: controller.onCategory,
                      onQuantity: controller.onQuantity,
                      onDescription: controller.onDescription,
                      onExpDate: controller.onExpDate,
                      onManDate: controller.onManDate,
                      onAddImage: controller.onAddImage,

                      onAdd: controller.onAdd,
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
