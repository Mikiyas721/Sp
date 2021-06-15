import 'package:flutter/material.dart';
import 'package:sp_client/common/widget/my_icon_button.dart';
import '../../../../common/extensions.dart';

class CategoryFilters extends StatelessWidget {
  final VoidCallback onFood;
  final VoidCallback onUtility;
  final VoidCallback onBeverage;
  final VoidCallback onCosmetics;

  const CategoryFilters({
    Key key,
    @required this.onFood,
    @required this.onUtility,
    @required this.onBeverage,
    @required this.onCosmetics,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        15.hSpace,
        MyIconButton(title: 'Food', icon: Icons.fastfood, onTap: onFood),
        25.hSpace,
        MyIconButton(
            title: 'Utility',
            icon: Icons.architecture_outlined,
            onTap: onUtility),
        25.hSpace,
        MyIconButton(
            title: 'Beverage',
            icon: Icons.emoji_food_beverage,
            onTap: onBeverage),
        30.hSpace,
        15.hSpace,
        MyIconButton(
          title: 'Cosmetics',
          icon: Icons.ac_unit,
          onTap: onCosmetics,
        ),
      ],
    );
  }
}
