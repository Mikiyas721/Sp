import 'package:sp_web/common/view_model.dart';
import 'dart:typed_data';

class AddProductViewModel extends ViewModel {
  final String imageUrl;
  final Uint8List imageData;
  final String productName;
  final String productNameError;
  final String brandName;
  final String brandNameError;
  final String category;
  final String description;
  final String descriptionError;
  final int quantity;
  final String quantityError;
  final double price;
  final String priceError;

  final DateTime expDate;
  final DateTime manDate;
  final bool isAdding;

  AddProductViewModel(
      {this.imageUrl,
      this.imageData,
      this.productName,
      this.productNameError,
      this.brandName,
      this.brandNameError,
      this.category,
      this.description,
      this.descriptionError,
      this.quantity,
      this.quantityError,
      this.price,
      this.priceError,
      this.expDate,
      this.manDate,
      this.isAdding});

  @override
  List<Object> get props => [
        imageUrl,
        imageData,
        productName,
        productNameError,
        brandName,
        brandNameError,
        category,
        description,
        descriptionError,
        quantity,
        quantityError,
        price,
        priceError,
        expDate,
        manDate,
        isAdding,
      ];
}
