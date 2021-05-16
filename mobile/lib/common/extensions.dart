import 'package:flutter/material.dart';

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
  double get paddingTop => MediaQuery.of(this).padding.top;
}
