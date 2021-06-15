import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import './enums/product_category.dart';

extension SpacingExtension on num {
  EdgeInsets get padding => EdgeInsets.all(this.toDouble());

  EdgeInsets get topPadding => EdgeInsets.only(top: this.toDouble());

  EdgeInsets get hPadding => EdgeInsets.only(left: this.toDouble(), right: this.toDouble());

  EdgeInsets get margin => EdgeInsets.all(this.toDouble());

  Widget get vSpace => SizedBox(height: this.toDouble());

  Widget get hSpace => SizedBox(width: this.toDouble());
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
