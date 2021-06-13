import 'package:flutter/material.dart';
import 'package:sp_client/common/widget/my_icon_button.dart';

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
        MyIconButton(title: 'Food', icon: Icons.fastfood, onTap: onFood),
        MyIconButton(
            title: 'Utility',
            icon: Icons.architecture_outlined,
            onTap: onUtility),
        MyIconButton(
            title: 'Beverage',
            icon: Icons.emoji_food_beverage,
            onTap: onBeverage),
        MyIconButton(
            title: 'Cosmetics', icon: Icons.ac_unit, onTap: onCosmetics),
      ],
    );
  }
}
