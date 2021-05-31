import 'package:flutter/material.dart';
import 'package:sp_web/common/view_model.dart';

class ProductListViewModel extends SimpleListViewModel<ProductViewModel> {
  final String searchText;
  final String filter;
  final String category;
  final bool isPerformingQuery;

  ProductListViewModel({
    bool isLoading,
    String error,
    List<ProductViewModel> data,
    this.searchText,
    this.filter,
    this.category,
    @required this.isPerformingQuery,
  }) : super(
          isLoading: isLoading,
          error: error,
          data: data,
        );
}

class ProductViewModel extends ViewModel {
  final String imageUrl;
  final String name;
  final String category;

  ProductViewModel({
    this.imageUrl,
    this.name,
    this.category,
  });

  @override
  List<Object> get props => [
        imageUrl,
        name,
        category,
      ];
}
