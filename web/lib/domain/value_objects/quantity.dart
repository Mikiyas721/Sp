import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';

abstract class QuantityFailure extends Failure {}

class InadequateQuantity extends QuantityFailure {
  @override
  String get message => 'Quantity should be at least 1';
}

class InvalidQuantity extends QuantityFailure {
  @override
  String get message => 'Invalid Quantity';
}

class Quantity {
  final int quantity;

  Quantity._(this.quantity);

  Either<QuantityFailure, Quantity> create(String quantityString) {
    int quantity = int.tryParse(quantityString);
    if (quantity == null) return left(InvalidQuantity());
    if (quantity < 1) return left(InadequateQuantity());
    return right(Quantity._(quantity));
  }
}
