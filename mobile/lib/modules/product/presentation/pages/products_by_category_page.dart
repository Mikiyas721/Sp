import 'package:flutter/material.dart';
import 'package:sp_client/common/controller/controller_provider.dart';
import 'package:sp_client/modules/product/presentation/controller/product_by_category_controller.dart';
import 'package:sp_client/modules/product/presentation/model/category_view_model.dart';
import 'package:sp_client/modules/product/presentation/views/category_products_view.dart';

class ProductsByCategoryPage extends StatelessWidget {
  static const String routeName = "/productByCategoryPage";

  @override
  Widget build(BuildContext context) {
    String category = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(),
      body: ViewModelBuilder.withController<CategoryProductsViewModel,
              ProductByCategoryController>(
          create: () => ProductByCategoryController(context, category),
          onInit: (controller) => controller.loadInitial(),
          builder: (context, controller, model) {
            return CategoryProductsView(
              categoryProductsViewModel: model,
              onReload: controller.loadInitial,
            );
          }),
    );
  }
}
