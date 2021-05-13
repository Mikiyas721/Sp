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

class PaginatedDataTableViewModel<T>
    extends EmptyErrorLoadingViewModel<List<T>> {
  final String listFilter;
  final String searchFilter;
  final bool isPerformingQuery;

  PaginatedDataTableViewModel({
    String error,
    List<T> data,
    bool isLoading = false,
    this.listFilter,
    this.searchFilter,
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
        isPerformingQuery
      ];
}
