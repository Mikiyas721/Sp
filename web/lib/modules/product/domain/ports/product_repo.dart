import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/product/domain/entities/product.dart';

abstract class IProductRepo{
  Future<Either<Failure, Product>> create(Product product);
  Future<Either<Failure, List<Product>>> searchProduct(String prop, String value);
  Future<Either<Failure, Product>> update(Product product);
}