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
