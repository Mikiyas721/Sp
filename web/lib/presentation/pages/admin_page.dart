import 'package:flutter/material.dart';
import 'package:sp_web/presentation/widgets/my_drawer.dart';

class AdminsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyDrawer(index:2),
      ],
    );
  }
}
