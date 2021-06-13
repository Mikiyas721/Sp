import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sp_web/common/controller/controller_provider.dart';
import 'package:sp_web/common/widgets/my_action_button.dart';
import 'package:sp_web/common/widgets/my_drawer.dart';
import 'package:sp_web/modules/product/presentation/controller/load_products_controller.dart';
import 'package:sp_web/modules/product/presentation/models/product_view_model.dart';
import 'package:sp_web/modules/product/presentation/views/products_view.dart';
import 'package:sp_web/common/widgets/multiScroller.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyDrawer(
            index: 4,
          ),
          Stack(
            children: [
              MultiScroller(child:Container(
                    margin: EdgeInsets.only(left: 20),
                    width: (MediaQuery.of(context).size.width) * 0.78,
                    child: ViewModelBuilder.withController<ProductListViewModel,
                            LoadProductsController>(
                        create: () => LoadProductsController(context),
                        onInit: (controller) => controller.loadInitial(),
                        builder: (context, controller, model) {
                          return ProductListView(
                            productListViewModel: model,
                            onFilterChanged: controller.onFilterChanged,
                            onCategoryChanged: controller.onCategoryChanged,
                            onSearch: controller.onSearch,
                            onReload: controller.loadInitial,
                          );
                        }),
                  )),
              Positioned(
                right: 0,
                top: 20,
                child: MyActionButton(
                  label: 'Add Products',
                  width: 150,
                  radius: 8,
                  onPressed: () {
                    Navigator.pushNamed(context, '/addProduct');
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
