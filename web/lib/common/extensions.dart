import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:sp_web/common/enums/admin_privilege_type.dart';
import 'package:sp_web/common/enums/product_category.dart';
import 'package:sp_web/common/enums/employee_position.dart';
import 'package:sp_web/common/enums/employee_type.dart';

extension SpacingExtension on num {
  Widget get vSpace => SizedBox(height: this.toDouble());

  Widget get hSpace => SizedBox(width: this.toDouble());

  EdgeInsets get vPadding => EdgeInsets.symmetric(vertical: this.toDouble());

  EdgeInsets get hPadding => EdgeInsets.symmetric(horizontal: this.toDouble());

  EdgeInsets get allPadding => EdgeInsets.all(this.toDouble());
}

extension BuildContextExtension on BuildContext {
  TextStyle get headline6 => Theme.of(this).textTheme.headline6;

  TextStyle get headline5 => Theme.of(this).textTheme.headline5;

  TextStyle get subtitle2 => Theme.of(this).textTheme.subtitle2;

  TextStyle get caption => Theme.of(this).textTheme.caption;

  Color get primaryColor => Theme.of(this).primaryColor;

  Color get scaffoldBackgroundColor => Theme.of(this).scaffoldBackgroundColor;
}

extension CategoryExtension on ProductCategory {
  Option<String> getString() {
    if (this == ProductCategory.FOOD) return some('Food');
    if (this == ProductCategory.UTILITY) return some('Utility');
    if (this == ProductCategory.BEVERAGE) return some('Beverage');
    if (this == ProductCategory.COSMETICS) return some('Cosmetics');
    return none();
  }

  static List<String> get categoryList => ProductCategory.values
      .map((e) => e.getString().getOrElse(() => null))
      .toList();
}

extension AdminPrivilegeTypeExtension on AdminPrivilegeType {
  Option<String> getString() {
    if (this == AdminPrivilegeType.ALL_FEATURES) return some('All Features');
    return none();
  }

  static List<String> get adminPrivilegeTypeList => AdminPrivilegeType.values
      .map((e) => e.getString().getOrElse(() => null))
      .toList();
}

extension EmployeePositionExtension on EmployeePosition {
  Option<String> getString() {
    if (this == EmployeePosition.GENERAL_MANAGER)
      return some('General Manager');
    return none();
  }

  static List<String> get employeePositionList => EmployeePosition.values
      .map<String>((e) => e.getString().getOrElse(() => null))
      .toList();
}

extension EmployeeTypeExtension on EmployeeType {
  Option<String> getString() {
    if (this == EmployeeType.FULL_TIME) return some('Full Time');
    if (this == EmployeeType.PART_TIME) return some('Part Time');
    return none();
  }

  static List<String> get employeeTypeList => EmployeeType.values
      .map((e) => e.getString().getOrElse(() => null))
      .toList();
}

extension StringExtension on String {
  Option<ProductCategory> toCategory() {
    if (this == 'Food') return some(ProductCategory.FOOD);
    if (this == 'Utility') return some(ProductCategory.UTILITY);
    if (this == 'Beverage') return some(ProductCategory.BEVERAGE);
    if (this == 'Cosmetics') return some(ProductCategory.COSMETICS);
    return none();
  }

  Option<AdminPrivilegeType> toAdminPrivilegeType() {
    if (this == 'All Features') return some(AdminPrivilegeType.ALL_FEATURES);
    return none();
  }

  Option<EmployeePosition> toEmployeePosition() {
    if (this == 'General Manager')
      return some(EmployeePosition.GENERAL_MANAGER);
    return none();
  }

  Option<EmployeeType> toEmployeeType() {
    if (this == 'Full Time') return some(EmployeeType.FULL_TIME);
    if (this == 'Part Time') return some(EmployeeType.PART_TIME);
    return none();
  }
}
