import 'package:flutter/material.dart';
import 'package:sp_client/common/controller/controller_provider.dart';
import 'package:sp_client/modules/product/presentation/controller/navigation_controller.dart';
import 'package:sp_client/modules/product/presentation/controller/latest_products_controller.dart';
import 'package:sp_client/modules/product/presentation/model/latest_products_view_model.dart';
import 'package:sp_client/modules/product/presentation/views/category_filters.dart';
import 'package:sp_client/modules/product/presentation/views/latest_products_view.dart';
import '../../../../common/extensions.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "/homePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: context.screenHeight - context.screenTop,
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: LayoutBuilder(builder: (ctx, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Categories",
                  style: context.headline1,
                  textAlign: TextAlign.center,
                ),
                ControllerProvider<NavigationController>(
                    create: () => NavigationController(context),
                    builder: (context, controller) {
                      return CategoryFilters(
                        onFood: controller.onFood,
                        onUtility: controller.onUtility,
                        onBeverage: controller.onBeverage,
                        onCosmetics: controller.onCosmetics,
                      );
                    }),
                15.0.vSpace,
                Text(
                  "Latest",
                  style: context.headline1,
                ),
                ViewModelBuilder.withController<LatestProductsViewModel,
                        LatestProductsController>(
                    create: () => LatestProductsController(context),
                    onInit: (LatestProductsController controller) =>
                        controller.loadLatest(),
                    builder: (context, controller, model) {
                      return LatestProductsView(
                        latestProductsViewModel: model,
                        onReload: controller.loadLatest,
                      );
                    })
              ],
            );
          }),
        ),
      ),
      bottomNavigationBar: ControllerProvider<NavigationController>(
          create: () => NavigationController(context),
          builder: (context, controller) {
            return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: "Search",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.post_add_sharp),
                  label: "Request",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_comment),
                  label: "Suggestions",
                ),
              ],
              onTap: controller.onNavigate,
            );
          }),
    );
  }
}
