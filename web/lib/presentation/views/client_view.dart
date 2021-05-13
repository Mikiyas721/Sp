import 'package:flutter/material.dart';
import 'package:sp_web/common/widgets/list_view.dart';
import 'package:sp_web/presentation/models/client_view_model.dart';
import '../../common/extensions.dart';

class ClientView extends PaginatedDataTableView<ClientViewModel> {
  ClientView({
    ClientViewModel clientViewModel,
    void Function(String filter) onFilterChanged,
    void Function(String filter) onSearchFilterChanged,
    void Function(String filter) onSearch,
    void Function(String filter) onViewComments,
    void Function(String filter) onBlock,
  }) : super(
          columns: [
            DataColumn(label: Text('#')),
            DataColumn(label: Text('Picture')),
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Phone number')),
            DataColumn(label: Text('Email')),
            DataColumn(label: Text('Joined')),
            DataColumn(label: Text('Actions')),
          ],
          filters: ['All', 'Active', 'New'],
          source: ClientDataTableSource(
            onViewComments: onViewComments,
            onBlock: onBlock,
          ),
          headerTitle: 'Clients',
          hint: 'filter',
          viewModel: clientViewModel,
          onFilterChanged: onFilterChanged,
          onSearchFilterChanged: onSearchFilterChanged,
          onSearch: onSearch,
          onAction1: onViewComments,
          onAction2: onBlock,
        );
}

class ClientDataTableSource extends DataTableSource {
  final void Function(Object entity) onViewComments;
  final void Function(Object entity) onBlock;
  final List<Object> data;

  ClientDataTableSource({
    this.onViewComments,
    this.onBlock,
    this.data,
  });

  @override
  DataRow getRow(int index) => DataRow.byIndex(index: index, cells: [
        DataCell(Text('${index + 1}')),
        DataCell(CircleAvatar(
          backgroundImage:
              AssetImage('images/1.png'), //TODO replace with actual data
        )),
        DataCell(
          Text('Mikiyas Tesfaye'),
        ),
        DataCell(
          Text('+251 941135730'),
        ),
        DataCell(
          Text('Mikiyas721@gmail.com'),
        ),
        DataCell(
          Text('05/04/21'),
        ),
        DataCell(Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(
                  Icons.comment,
                  color: Color(0xFF707070),
                  size: 18,
                ),
                onPressed: () {
                  onViewComments(data[index]);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.block,
                  color: Color(0xFF707070),
                  size: 18,
                ),
                onPressed: () {
                  onBlock(data[index]);
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
