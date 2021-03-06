import 'package:flutter/material.dart';
import 'package:sp_web/common/widgets/list_view.dart';
import 'package:sp_web/config/config.definition.dart';
import 'package:sp_web/injection.dart';
import 'package:sp_web/modules/customer/presentation/models/customer_view_model.dart';

class CustomersView
    extends PaginatedDataTableView<CustomersViewModel, CustomerViewModel> {
  CustomersView({
    @required CustomersViewModel clientViewModel,
    @required void Function(String filter) onFilterChanged,
    @required void Function(String filter) onSearchFilterChanged,
    @required void Function(String filter) onSearch,
    @required void Function(CustomerViewModel filter) onViewComments,
    @required void Function(CustomerViewModel filter) onBlock,
    @required VoidCallback onReload,
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
            filters: [
              'All',
              'Active',
              'New'
            ],
            source: ClientDataTableSource(
              onViewComments: onViewComments,
              onBlock: onBlock,
              data: clientViewModel.data,
            ),
            headerTitle: 'Clients',
            hint: 'filter',
            emptyMessage: 'You have no customers',
            viewModel: clientViewModel,
            onFilterChanged: onFilterChanged,
            onSearchFilterChanged: onSearchFilterChanged,
            onSearch: onSearch,
            onAction1: onViewComments,
            onAction2: onBlock,
            onReload: onReload);
}

class ClientDataTableSource extends DataTableSource {
  final void Function(CustomerViewModel entity) onViewComments;
  final void Function(CustomerViewModel entity) onBlock;
  final List<CustomerViewModel> data;

  ClientDataTableSource({
    @required this.onViewComments,
    @required this.onBlock,
    @required this.data,
  });

  @override
  DataRow getRow(int index) => DataRow.byIndex(index: index, cells: [
        DataCell(Text('${index + 1}')),
        DataCell(CircleAvatar(
          backgroundImage: NetworkImage('${getIt.get<ConfigDefinition>().apiUrl}/containers/customer/download/${data[index].imageName}'),
        )),
        DataCell(
          Text(data[index].name),
        ),
        DataCell(
          Text(data[index].phoneNumber),
        ),
        DataCell(
          Text(data[index].email),
        ),
        DataCell(
          Text(data[index].createdAt),
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
  int get rowCount => data.length; // TODO replace with data.length

  @override
  int get selectedRowCount => 0;
}
