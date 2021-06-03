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
  final String name;
  final String phoneNumber;
  final String email;
  final String photoUrl;
  final String createdAt;
  final String updatedAt;

  CustomerViewModel({
    this.id,
    this.name,
    this.phoneNumber,
    this.email,
    this.photoUrl,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object> get props => [
        id,
        name,
        phoneNumber,
        email,
        photoUrl,
        createdAt,
        updatedAt,
      ];
}
