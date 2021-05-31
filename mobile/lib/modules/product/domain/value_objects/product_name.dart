import 'package:dartz/dartz.dart';
import '../../../../common/failure.dart';

abstract class ProductNameFailure extends Failure {}

class EmptyProductNameFailure extends ProductNameFailure {
  @override
  String get message => 'Product name is required';
}

class ShortProductNameFailure extends ProductNameFailure {
  @override
  String get message => 'Name is too short';
}

class LongProductNameFailure extends ProductNameFailure {
  @override
  String get message => 'Name is too long';
}

class InvalidProductNameFailure extends ProductNameFailure {
  @override
  String get message => 'Invalid product Name';
}

//TODO a regex for product name

class ProductName {
  final String name;

  ProductName._(this.name);

  static Either<ProductNameFailure, ProductName> create(String productName) {
    if (productName == null || productName.isEmpty)
      return left(EmptyProductNameFailure());
    if (productName.length < 2) return left(ShortProductNameFailure());
    if (productName.length > 18) return left(LongProductNameFailure());
    return right(ProductName._(productName));
  }
}
