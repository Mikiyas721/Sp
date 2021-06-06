import 'package:flutter/material.dart';
import 'package:sp_web/common/widgets/list_view.dart';
import 'package:sp_web/modules/admin/presentation/models/admin_view_model.dart';
import '../../../../common/extensions.dart';

class AdminView
    extends PaginatedDataTableView<AdminsViewModel, AdminViewModel> {
  AdminView({
    @required AdminsViewModel adminsViewModel,
    @required void Function(String filter) onFilterChanged,
    @required void Function(String filter) onSearchFilterChanged,
    @required void Function(String filter) onSearch,
    @required void Function(AdminViewModel filter) onOpen,
    @required void Function(AdminViewModel filter) onEdit,
    @required void Function(AdminViewModel filter) onDelete,
    @required void Function(AdminViewModel filter) onAdd,
    @required VoidCallback onReload,
  }) : super(
            columns: [
              DataColumn(label: Text('#')),
              DataColumn(label: Text('Contact')),
              DataColumn(label: Text('Privilege Type')),
              DataColumn(label: Text('Password')),
              DataColumn(label: Text('Registered')),
              DataColumn(label: Text('Actions')),
            ],
            filters: AdminPrivilegeTypeExtension.adminPrivilegeTypeList,
            source: AdminDataTableSource(
                onOpen: onOpen,
                onEdit: onEdit,
                onDelete: onDelete,
                data: adminsViewModel.data),
            headerTitle: 'Admins',
            hint: 'filter',
            emptyMessage: 'No Admins',
            viewModel: adminsViewModel,
            onFilterChanged: onFilterChanged,
            onSearchFilterChanged: onSearchFilterChanged,
            onSearch: onSearch,
            onAction1: onOpen,
            onAction2: onEdit,
            onAction3: onDelete,
            onReload: onReload);
}

class AdminDataTableSource extends DataTableSource {
  final void Function(AdminViewModel entity) onOpen;
  final void Function(AdminViewModel entity) onEdit;
  final void Function(AdminViewModel entity) onDelete;
  final List<AdminViewModel> data;

  AdminDataTableSource({
    @required this.onOpen,
    @required this.onEdit,
    @required this.onDelete,
    @required this.data,
  });

  @override
  DataRow getRow(int index) => DataRow.byIndex(index: index, cells: [
        DataCell(Text('${index + 1}')),
        DataCell(Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(data[index].phoneNumber),
          ],
        )),
        DataCell(Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(data[index].privilegeType),
          ],
        )),
        DataCell(Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(data[index].password),
          ],
        )),
        DataCell(Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data[index].createdAt),
              2.0.vSpace,
              Text(data[index].updatedAt, style: TextStyle(color: Colors.grey))
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
            ]))
      ]);

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => data.length;

  @override
  int get selectedRowCount => 0;
}
