import 'package:dartz/dartz.dart';
import '../../common/failure.dart';
import '../entities/product.dart';

abstract class IProductRepo{
  Future<Either<Failure, Product>> create(Product product);
  Future<Either<Failure, List<Product>>> searchProduct(String prop, String value);
  Future<Either<Failure, Product>> update(Product product);
}