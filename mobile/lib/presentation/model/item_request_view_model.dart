import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class ItemRequestViewModel extends Equatable {
  final String itemName;
  final String itemNameError;
  final String itemCategory;
  final String itemCategoryError;
  final String itemDescription;
  final String itemDescriptionError;
  final bool hasSubmitted;
  final bool isSigningIn;

  ItemRequestViewModel({
    @required this.itemName,
    @required this.itemNameError,
    @required this.itemCategory,
    @required this.itemCategoryError,
    @required this.itemDescription,
    @required this.itemDescriptionError,
    @required this.hasSubmitted,
    @required this.isSigningIn,
  });

  @override
  List<Object> get props => [
        itemName,
        itemNameError,
        itemCategory,
        itemCategoryError,
        itemDescription,
        itemDescriptionError,
        hasSubmitted,
        isSigningIn,
      ];
}
