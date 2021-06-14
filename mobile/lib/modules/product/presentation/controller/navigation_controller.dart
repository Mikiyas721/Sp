import 'package:flutter/cupertino.dart';
import 'package:sp_client/common/controller/controller.dart';
import 'package:sp_client/modules/product/presentation/pages/item_request_page.dart';
import 'package:sp_client/modules/product/presentation/pages/products_by_category_page.dart';

class NavigationController extends Controller {
  final BuildContext context;

  NavigationController(this.context);

  void onFood() {
    Navigator.pushReplacementNamed(context, ProductsByCategoryPage.routeName,
        arguments: 'Food');
  }

  void onUtility() {
    Navigator.pushReplacementNamed(context, ProductsByCategoryPage.routeName,
        arguments: 'Utility');
  }

  void onBeverage() {
    Navigator.pushReplacementNamed(context, ProductsByCategoryPage.routeName,
        arguments: 'Beverage');
  }

  void onCosmetics() {
    Navigator.pushReplacementNamed(context, ProductsByCategoryPage.routeName,
        arguments: 'Cosmetics');
  }

  void onNavigate(int value) {
    if (value == 0) {
    } else if (value == 1) {
      Navigator.pushReplacementNamed(context, ItemRequestPage.routeName);
    } else if (value == 2) {}
  }

  @override
  dispose() {}
}
