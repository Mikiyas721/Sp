import 'package:sp_web/common/view_model.dart';

class AddProductViewModel extends ViewModel {
  final String imageUrl;
  final String productName;
  final String productNameError;
  final String brandName;
  final String brandNameError;
  final String category;
  final String description;
  final String descriptionError;
  final int quantity;
  final String quantityError;
  final DateTime expDate;
  final DateTime manDate;

  AddProductViewModel({
    this.imageUrl,
    this.productName,
    this.productNameError,
    this.brandName,
    this.brandNameError,
    this.category,
    this.description,
    this.descriptionError,
    this.quantity,
    this.quantityError,
    this.expDate,
    this.manDate,
  });

  @override
  List<Object> get props => [
        imageUrl,
        productName,
        productNameError,
        brandName,
        brandNameError,
        category,
        description,
        descriptionError,
        quantity,
        quantityError,
        expDate,
        manDate,
      ];
}
