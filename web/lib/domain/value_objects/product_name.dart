import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';

abstract class ProductNameFailure extends Failure {}

class EmptyProductNameFailure extends ProductNameFailure {
  @override
  String get message => 'Product Name is required';
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
  String get message => 'Invalid Product Name';
}

class ProductName {
  final String name;

  ProductName._(this.name);

  Either<ProductNameFailure, ProductName> create(String productName) {
    if (productName == null || productName.isEmpty)
      return left(EmptyProductNameFailure());
    if (productName.length < 2) return left(ShortProductNameFailure());
    if (productName.length > 18) return left(LongProductNameFailure());
    return right(ProductName._(productName));
  }
}
