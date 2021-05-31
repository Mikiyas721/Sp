import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sp_web/common/widgets/my_action_button.dart';
import 'package:sp_web/common/widgets/my_drawer.dart';
import 'package:sp_web/modules/product/presentation/models/product_view_model.dart';
import 'package:sp_web/modules/product/presentation/views/products_view.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyDrawer(
            index: 4,
          ),
          Stack(
            children: [
              Scrollbar(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    width: (MediaQuery.of(context).size.width) * 0.78,
                    child: ProductListView(
                      productListViewModel: ProductListViewModel(
                          isLoading: false,
                          isPerformingQuery: true,
                          data: List.filled(
                              30,
                              ProductViewModel(
                                imageUrl: 'images/1.png',
                                name: 'Wrench',
                                category: 'Utility',
                              ))),
                    ),
                  ),
                ),
              ),
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
