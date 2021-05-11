import 'package:flutter/material.dart';
import 'package:sp_web/common/widgets/my_loading_view.dart';
import 'package:sp_web/presentation/models/employees_view_model.dart';
import 'package:sp_web/presentation/widgets/border_text_field.dart';
import 'package:sp_web/presentation/widgets/my_dropdown.dart';
import '../../common/extensions.dart';

class EmployeesView extends StatelessWidget {
  final EmployeesViewModel employeesViewModel;
  final void Function(String filter) onListFilter;
  final void Function(String filter) onSearchFilter;
  final void Function(String text) onSearch;

  const EmployeesView({
    Key key,
    @required this.employeesViewModel,
    @required this.onListFilter,
    @required this.onSearchFilter,
    @required this.onSearch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (employeesViewModel.isLoading)
      return Container(
          width: MediaQuery.of(context).size.width * 0.78,
          child: Center(child: MyLoadingView()));
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Card(
        margin: 20.allPadding,
        elevation: 5,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.78,
          child: PaginatedDataTable(
            dataRowHeight: 60,
            header: Text('Employees'),
            actions: [
              BorderTextField(
                hintText: 'Search',
                width: 300,
                height: 38,
                onChanged: onSearch,
              ),
              MyDropdown(
                onChanged: onListFilter,
                currentItem: 'Current',
                items: ['Current', 'All'],
                width: 100,
              ),
            ],
            rowsPerPage: 10,
            columns: [
              DataColumn(
                  label: Text('#'), onSort: (int, bool) {}, numeric: true),
              DataColumn(label: Text('Picture')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Contact')),
              DataColumn(label: Text('Salary')),
              DataColumn(label: Text('Registered')),
            ],
            source: EmployeeSource(),
          ),
        ),
      ),
    );
  }
}

class EmployeeSource extends DataTableSource {
  @override
  DataRow getRow(int index) => DataRow.byIndex(index: index, cells: [
        DataCell(Text('${index + 1}')),
        DataCell(CircleAvatar(
          backgroundImage: AssetImage('images/1.png'),
        )),
        DataCell(Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Mikiyas Tesfaye'),
            2.vSpace,
            Text(
              'Cashier',
              style: TextStyle(color: Colors.grey),
            )
          ],
        )),
        DataCell(Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('+251 941135730'),
            2.vSpace,
            Text('Mikiyas721@gmail.com', style: TextStyle(color: Colors.grey))
          ],
        )),
        DataCell(Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('3000ETB'),
              2.vSpace,
              Text('Full time', style: TextStyle(color: Colors.grey))
            ])),
        DataCell(Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('05/04/21'),
              2.vSpace,
              Text('05/06/21', style: TextStyle(color: Colors.grey))
            ])),
      ]);

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => 50;

  @override
  int get selectedRowCount => 0;
}
