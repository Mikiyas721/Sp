import 'package:flutter/material.dart';

extension SpacingExtension on num {
  Widget get vSpace => SizedBox(height: this);

  Widget get hSpace => SizedBox(width: this);

  EdgeInsets get vPadding => EdgeInsets.symmetric(vertical: this);

  EdgeInsets get hPadding => EdgeInsets.symmetric(horizontal: this);

  EdgeInsets get allPadding => EdgeInsets.all(this);
}

extension BuildContextExtension on BuildContext {
  TextStyle get headline6 => Theme.of(this).textTheme.headline6;
  TextStyle get headline5 => Theme.of(this).textTheme.headline5;
  TextStyle get caption => Theme.of(this).textTheme.caption;

  Color get primaryColor => Theme.of(this).primaryColor;
}
