import 'package:flutter/material.dart';
import 'package:sp_web/common/view_model.dart';

class EmployeesViewModel
    extends PaginatedDataTableViewModel<EmployeeViewModel> {
  EmployeesViewModel({
    @required String error,
    @required List<EmployeeViewModel> data,
    @required bool isLoading,
    @required String listFilter,
    @required String searchFilter,
    @required String searchText,
    @required bool isPerformingQuery,
  }) : super(
          error: error,
          data: data,
          isLoading: isLoading,
          listFilter: listFilter,
          searchFilter: searchFilter,
          searchText: searchText,
          isPerformingQuery: isPerformingQuery,
        );
}

class EmployeeViewModel extends ViewModel {
  final String id;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String email;
  final String employeePosition;
  final String salary;
  final String employeeType;
  final String photoUrl;
  final String docUrl;
  final String createdAt;
  final String updatedAt;

  EmployeeViewModel({
    this.id,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.email,
    this.employeePosition,
    this.salary,
    this.employeeType,
    this.photoUrl,
    this.docUrl,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object> get props => [
        id,
        firstName,
        lastName,
        phoneNumber,
        email,
        employeePosition,
        salary,
        employeeType,
        photoUrl,
        docUrl,
        createdAt,
        updatedAt,
      ];
}
