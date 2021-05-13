import 'package:flutter/material.dart';
import 'package:sp_web/presentation/widgets/my_drawer.dart';

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          MyDrawer(
            index: 5,
          ),
        ],
      ),
    );
  }
}
