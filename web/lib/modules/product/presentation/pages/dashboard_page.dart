import 'package:flutter/material.dart';
import 'package:sp_web/common/widgets/my_drawer.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Row(
      children: [MyDrawer(index: 0)],
    )));
  }
}
