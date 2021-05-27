import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import './enums/product_category.dart';

extension SpacingExtension on num {
  EdgeInsets get padding => EdgeInsets.all(this);

  EdgeInsets get topPadding => EdgeInsets.only(top: this);

  EdgeInsets get hPadding => EdgeInsets.only(left: this, right: this);

  EdgeInsets get margin => EdgeInsets.all(this);

  Widget get vSpace => SizedBox(height: this);

  Widget get hSpace => SizedBox(width: this);
}

extension BuildContextExtenstion on BuildContext {
  Color get primaryColor => Theme.of(this).primaryColor;

  Color get accentColor => Theme.of(this).accentColor;

  TextStyle get headline1 => Theme.of(this).textTheme.headline1;

  TextStyle get headline6 => Theme.of(this).textTheme.headline6;

  double get screenHeight => MediaQuery.of(this).size.height;

  double get screenTop => MediaQuery.of(this).padding.top;

  double get paddingTop => MediaQuery.of(this).padding.top;
}

extension StringExtension on String {
  Option<ProductCategory> toCategory() {
    if (this == 'Food') return some(ProductCategory.FOOD);
    if (this == 'Utility') return some(ProductCategory.UTILITY);
    if (this == 'Beverage') return some(ProductCategory.BEVERAGE);
    if (this == 'Cosmetics') return some(ProductCategory.COSMETICS);
    return none();
  }

//  Option<AdminPrivilegeType> toAdminPrivilegeType() {
//    if (this == 'All_Features') return some(AdminPrivilegeType.ALL_FEATURES);
//    return none();
//  }

//  Option<EmployeePosition> toEmployeePosition() {
//    if (this == 'General_Manager')
//      return some(EmployeePosition.GENERAL_MANAGER);
//    return none();
//  }

//  Option<EmployeeType> toEmployeeType() {
//    if (this == 'Full_Time') return some(EmployeeType.FULL_TIME);
//    if (this == 'Part_Time') return some(EmployeeType.PART_TIME);
//    return none();
//  }
}

extension CategoryExtension on ProductCategory {
  Option<String> getString() {
    if (this == ProductCategory.FOOD) return some('Food');
    if (this == ProductCategory.UTILITY) return some('Utility');
    if (this == ProductCategory.BEVERAGE) return some('Beverage');
    if (this == ProductCategory.COSMETICS) return some('Cosmetics');
    return none();
  }

  List<String> get categoryList =>
      ProductCategory.values.map((e) => e.getString().getOrElse(() => null)).toList();
}
