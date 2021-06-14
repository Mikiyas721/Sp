import 'package:flutter/foundation.dart';
import 'package:sp_client/common/view_model.dart';

class CategoryProductsViewModel
    extends SimpleListViewModel<CategoryProductViewModel> {
  CategoryProductsViewModel({
    @required List<CategoryProductViewModel> list,
    @required String loadingError,
    @required bool isLoading,
  }) : super(isLoading: isLoading, data: list, error: loadingError);
}

class CategoryProductViewModel extends ViewModel {
  final String id;
  final String itemName;
  final int quantity;
  final String imageUrl;
  final DateTime date;

  CategoryProductViewModel(
      {this.id,
      @required this.itemName,
      @required this.quantity,
      @required this.imageUrl,
      @required this.date});

  @override
  List<Object> get props => [
        id,
        itemName,
        quantity,
        imageUrl,
        date,
      ];
}
