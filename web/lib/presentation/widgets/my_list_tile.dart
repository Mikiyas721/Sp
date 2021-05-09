import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 10,
          color: Color(0xFF0080FF),
        ),
        ListTile(
          leading: Icon(Icons.extension),
          title: Text('Dashboard'),
        )
      ],
    ));
  }
}
