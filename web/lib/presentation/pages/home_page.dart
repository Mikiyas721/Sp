import 'package:flutter/material.dart';
import 'package:sp_web/presentation/widgets/my_drawer.dart';
import 'package:sp_web/presentation/widgets/my_list_tile.dart';
import '../../common/extensions.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Row(
      children: [
        MyDrawer(onItemSelected: (int index) {}),
        DataTable(columns: [
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Contact')),
          DataColumn(label: Text('Salary')),
          DataColumn(label: Text('Registered')),
        ], rows: [
          DataRow(cells: [
            DataCell(Text('Mikiyas Tesfaye')),
            DataCell(Text('Mikiyas721@gmail.com')),
            DataCell(Text('3000ETB')),
            DataCell(Text('05/04/21')),
          ]),
          DataRow(cells: [
            DataCell(Text('Aikiyas Tesfaye')),
            DataCell(Text('Mikiyas721@gmail.com')),
            DataCell(Text('3000ETB')),
            DataCell(Text('05/04/21')),
          ]),
          DataRow(cells: [
            DataCell(Text('Bikiyas Tesfaye')),
            DataCell(Text('Mikiyas721@gmail.com')),
            DataCell(Text('3000ETB')),
            DataCell(Text('05/04/21')),
          ]),
          DataRow(cells: [
            DataCell(Text('Zikiyas Tesfaye')),
            DataCell(Text('Mikiyas721@gmail.com')),
            DataCell(Text('3000ETB')),
            DataCell(Text('05/04/21')),
          ]),
          DataRow(cells: [
            DataCell(Text('Fikiyas Tesfaye')),
            DataCell(Text('Mikiyas721@gmail.com')),
            DataCell(Text('3000ETB')),
            DataCell(Text('05/04/21')),
          ])
        ])
      ],
    )));
  }
}
