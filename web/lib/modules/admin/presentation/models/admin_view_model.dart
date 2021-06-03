import 'package:flutter/material.dart';
import 'package:sp_web/common/view_model.dart';

class AdminsViewModel extends PaginatedDataTableViewModel<AdminViewModel> {
  AdminsViewModel({
    @required String error,
    @required List<AdminViewModel> data,
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

class AdminViewModel extends ViewModel {
  final String id;
  final String phoneNumber;
  final String password;
  final String privilegeType;
  final String createdAt;
  final String updatedAt;

  AdminViewModel({
    this.id,
    this.phoneNumber,
    this.password,
    this.privilegeType,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object> get props => [
        id,
        phoneNumber,
        password,
        privilegeType,
        createdAt,
        updatedAt,
      ];
}
