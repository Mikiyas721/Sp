import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sp_web/presentation/widgets/my_drawer.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          MyDrawer(
            index: 4,
          ),
        ],
      ),
    );
  }
}
