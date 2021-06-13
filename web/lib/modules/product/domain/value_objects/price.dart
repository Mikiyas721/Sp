import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';

abstract class PriceFailure extends Failure{

}
class EmptyPriceFailure extends PriceFailure{
  @override
  String get message => 'Price is required';
}
class InvalidPrice extends EmptyPriceFailure {
  @override
  String get message => 'Invalid Price';
}
class Price{
  final double price;

  Price._(this.price);

  static Either<PriceFailure, Price> createFromString(String priceString) {
    double price = double.tryParse(priceString);
    if (price == null) return left(InvalidPrice());
    if (price == 0) return left(EmptyPriceFailure());
    return right(Price._(price));
  }
  static Either<PriceFailure, Price> create(double price) {
    if (price == null) return left(InvalidPrice());
    if (price == 0) return left(EmptyPriceFailure());
    return right(Price._(price));
  }


}
