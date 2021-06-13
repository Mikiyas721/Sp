import 'package:flutter/material.dart';
import 'package:sp_web/common/view_model.dart';

class CustomersViewModel
    extends PaginatedDataTableViewModel<CustomerViewModel> {
  CustomersViewModel({
    @required String error,
    @required List<CustomerViewModel> data,
    @required bool isLoading,
    @required String listFilter,
    @required String searchFilter,
    @required String searchString,
    @required bool isPerformingQuery,
  }) : super(
          error: error,
          data: data,
          isLoading: isLoading,
          listFilter: listFilter,
          searchFilter: searchFilter,
          searchText: searchString,
          isPerformingQuery: isPerformingQuery,
        );
}

class CustomerViewModel extends ViewModel {
  final String id;
  final String imageName;
  final String name;
  final String phoneNumber;
  final String email;
  final String createdAt;
  final String updatedAt;

  CustomerViewModel({
    @required this.id,
    @required this.imageName,
    @required this.name,
    @required this.phoneNumber,
    @required this.email,
    @required this.createdAt,
    @required this.updatedAt,
  });

  @override
  List<Object> get props => [
        id,
        imageName,
        name,
        phoneNumber,
        email,
        createdAt,
        updatedAt,
      ];
}
