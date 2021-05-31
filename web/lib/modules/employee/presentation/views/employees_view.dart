import 'package:flutter/material.dart';
import 'package:sp_web/common/widgets/list_view.dart';
import 'package:sp_web/modules/employee/presentation/models/employees_view_model.dart';
import '../../../../common/extensions.dart';

class EmployeesView extends PaginatedDataTableView<EmployeesViewModel> {
  EmployeesView({
    EmployeesViewModel employeesViewModel,
    void Function(String filter) onFilterChanged,
    void Function(String filter) onSearchFilterChanged,
    void Function(String filter) onSearch,
    void Function(String filter) onOpen,
    void Function(String filter) onEdit,
    void Function(String filter) onDelete,
    void Function(String filter) onAdd,
  }) : super(columns:
          [
            DataColumn(label: Text('#')),
            DataColumn(label: Text('Picture')),
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Contact')),
            DataColumn(label: Text('Salary')),
            DataColumn(label: Text('Registered')),
            DataColumn(label: Text('Actions')),
          ],
          filters:['Current', 'All'],
          source:EmployeeDataTableSource(
            onOpen: onOpen,
            onEdit: onEdit,
            onDelete: onDelete,
            onAdd: onAdd,
          ),
          headerTitle:'Employees',
          hint: 'filter',
          viewModel:employeesViewModel,
          onFilterChanged:onFilterChanged,
          onSearchFilterChanged:onSearchFilterChanged,
          onSearch:onSearch,
          onAction1:onOpen,
          onAction2:onEdit,
          onAction3:onDelete,
          onAction4:onAdd,
        );
}

class EmployeeDataTableSource extends DataTableSource {
  final void Function(Object entity) onOpen;
  final void Function(Object entity) onEdit;
  final void Function(Object entity) onDelete;
  final void Function(Object entity) onAdd;
  final List<Object> data;

  EmployeeDataTableSource({
    this.onOpen,
    this.onEdit,
    this.onDelete,
    this.onAdd,
    this.data,
  });

  @override
  DataRow getRow(int index) => DataRow.byIndex(index: index, cells: [
        DataCell(Text('${index + 1}')),
        DataCell(CircleAvatar(
          backgroundImage:
              AssetImage('images/1.png'), //TODO replace with actual data
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
        DataCell(Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(
                  Icons.folder_open_outlined,
                  color: Color(0xFF707070),
                  size: 18,
                ),
                onPressed: () {
                  onOpen(data[index]);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.edit,
                  color: Color(0xFF707070),
                  size: 18,
                ),
                onPressed: () {
                  onEdit(data[index]);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Color(0xFF707070),
                  size: 18,
                ),
                onPressed: () {
                  onDelete(data[index]);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.add,
                  color: Color(0xFF707070),
                  size: 18,
                ),
                onPressed: () {
                  onAdd(data[index]);
                },
              ),
            ]))
      ]);

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => 50; // TODO replace with data.length

  @override
  int get selectedRowCount => 0;
}
