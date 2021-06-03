import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class ViewModel extends Equatable {}

class EmptyErrorLoadingViewModel<T> extends ViewModel {
  final String error;
  final T data;
  final bool isLoading;
  final bool isEmpty;

  EmptyErrorLoadingViewModel(
      this.error, this.data, this.isLoading, this.isEmpty);

  @override
  List<Object> get props => [error, data, isLoading, isEmpty];
}

class SimpleListViewModel<T> extends EmptyErrorLoadingViewModel<List<T>> {
  SimpleListViewModel(
      {@required String error,
      @required List<T> data,
      @required bool isLoading})
      : super(
          error,
          data,
          isLoading,
          data == null || data.isEmpty,
        );
}

class PaginatedDataTableViewModel<T extends ViewModel>
    extends EmptyErrorLoadingViewModel<List<T>> {
  final String listFilter;
  final String searchFilter;
  final String searchText;
  final bool isPerformingQuery;

  PaginatedDataTableViewModel({
    @required String error,
    @required List<T> data,
    bool isLoading = false,
    @required this.listFilter,
    @required this.searchFilter,
    @required this.searchText,
    this.isPerformingQuery = false,
  }) : super(
          error,
          data,
          isLoading,
          data == null || data.isEmpty,
        );

  @override
  List<Object> get props => [
        error,
        data,
        isLoading,
        isEmpty,
        listFilter,
        searchFilter,
        searchText,
        isPerformingQuery
      ];
}
