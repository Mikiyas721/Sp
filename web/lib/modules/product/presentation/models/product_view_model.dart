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
  final String imageName;
  final String productName;
  final String brandName;
  final String category;
  final String quantity;
  final String price;
  final String description;
  final String manDate;
  final String expDate;
  final String createdAt;
  final String updatedAt;

  ProductViewModel({
    @required this.id,
    @required this.imageName,
    @required this.productName,
    @required this.brandName,
    @required this.category,
    @required this.quantity,
	@required this.price,
    @required this.description,
    @required this.manDate,
    @required this.expDate,
    @required this.createdAt,
    @required this.updatedAt,
  });

  @override
  List<Object> get props => [
        id,
        imageName,
        productName,
        brandName,
        category,
        quantity,
		price,
        description,
        manDate,
        expDate,
        createdAt,
        updatedAt,
      ];
}
