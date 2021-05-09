import 'package:flutter/material.dart';
import 'package:sp_web/presentation/widgets/my_list_tile.dart';
import '../../common/extensions.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Card(
            margin: 0.allPadding,
            elevation: 5,
            child: Container(
              height: 800,
              width: 500,
              child: ListView(
                children: [MyListTile()]
              ),
            ),
          ),
        ],
      ),
    );
  }
}
