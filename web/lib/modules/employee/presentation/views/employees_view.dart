import 'package:flutter/material.dart';
import 'package:sp_web/common/widgets/list_view.dart';
import 'package:sp_web/config/config.definition.dart';
import 'package:sp_web/injection.dart';
import 'package:sp_web/modules/employee/presentation/models/employees_view_model.dart';
import '../../../../common/extensions.dart';

class EmployeesView
    extends PaginatedDataTableView<EmployeesViewModel, EmployeeViewModel> {
  EmployeesView(
      {EmployeesViewModel employeesViewModel,
      void Function(String filter) onFilterChanged,
      void Function(String filter) onSearchFilterChanged,
      void Function(String filter) onSearch,
      void Function(EmployeeViewModel filter) onOpen,
      void Function(EmployeeViewModel filter) onEdit,
      void Function(EmployeeViewModel filter) onDelete,
      void Function(EmployeeViewModel filter) onAdd,
      VoidCallback onReload})
      : super(
          columns: [
            DataColumn(label: Text('#')),
            DataColumn(label: Text('Picture')),
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Contact')),
            DataColumn(label: Text('Salary')),
            DataColumn(label: Text('Registered')),
            DataColumn(label: Text('Actions')),
          ],
          filters: EmployeePositionExtension.employeePositionList,
          source: EmployeeDataTableSource(
            data: employeesViewModel.data,
            onOpen: onOpen,
            onEdit: onEdit,
            onDelete: onDelete,
            onAdd: onAdd,
          ),
          headerTitle: 'Employees',
          hint: 'filter',
          emptyMessage: 'You have no employees',
          viewModel: employeesViewModel,
		  width:170,
          onFilterChanged: onFilterChanged,
          onSearchFilterChanged: onSearchFilterChanged,
          onSearch: onSearch,
          onAction1: onOpen,
          onAction2: onEdit,
          onAction3: onDelete,
          onAction4: onAdd,
          onReload: onReload,
        );
}

class EmployeeDataTableSource extends DataTableSource {
  final void Function(EmployeeViewModel entity) onOpen;
  final void Function(EmployeeViewModel entity) onEdit;
  final void Function(EmployeeViewModel entity) onDelete;
  final void Function(EmployeeViewModel entity) onAdd;
  final List<EmployeeViewModel> data;

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
          backgroundImage: NetworkImage('${getIt.get<ConfigDefinition>().apiUrl}/containers/employee/download/${data[index].imageName}'),
        )),
        DataCell(Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${data[index].firstName} ${data[index].lastName}'),
            2.vSpace,
            Text(
              data[index].employeePosition,
              style: TextStyle(color: Colors.grey),
            )
          ],
        )),
        DataCell(Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${data[index].phoneNumber}'),
            2.vSpace,
            Text('${data[index].email}', style: TextStyle(color: Colors.grey))
          ],
        )),
        DataCell(Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${data[index].salary}'),
              2.vSpace,
              Text('${data[index].employeeType}',
                  style: TextStyle(color: Colors.grey))
            ])),
        DataCell(Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${data[index].createdAt}')
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
  int get rowCount => data.length;

  @override
  int get selectedRowCount => 0;
}
