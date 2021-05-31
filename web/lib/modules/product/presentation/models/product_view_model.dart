import 'package:flutter/material.dart';
import 'package:sp_web/common/view_model.dart';

class ProductListViewModel extends SimpleListViewModel<ProductViewModel> {
  final String searchText;
  final String filter;
  final String category;
  final bool isPerformingQuery;

  ProductListViewModel({
    @required bool isLoading,
    @required String error,
    @required List<ProductViewModel> data,
    @required this.searchText,
    @required this.filter,
    @required this.category,
    @required this.isPerformingQuery,
  }) : super(
          isLoading: isLoading,
          error: error,
          data: data,
        );
}

class ProductViewModel extends ViewModel {
  final String id;
  final String imageUrl;
  final String productName;
  final String brandName;
  final String category;
  final String quantity;
  final String description;
  final String manDate;
  final String expDate;
  final String createdAt;
  final String updatedAt;

  ProductViewModel({
    this.id,
    this.imageUrl,
    this.productName,
    this.brandName,
    this.category,
    this.quantity,
    this.description,
    this.manDate,
    this.expDate,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object> get props => [
        productName,
        brandName,
        category,
        quantity,
        description,
        manDate,
        expDate,
        createdAt,
        updatedAt,
      ];
}
