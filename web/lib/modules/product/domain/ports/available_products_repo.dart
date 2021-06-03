import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/product/domain/entities/product.dart';

abstract class IAvailableProductsRepo{
  Future<Either<Failure, List<Product>>> fetchAll();
  Future<Either<Failure, List<Product>>> fetchRunningLow();
  Future<Either<Failure, List<Product>>> fetchNearExpiration();
  Future<Either<Failure, List<Product>>> fetchByCategory(String value);
  Future<Either<Failure, Product>> update(Product product);
  Future<Either<Failure, List<Product>>> searchAvailableProduct(
      String prop, String value);
  Future<Either<Failure, Product>> addProduct(Product product);
  Future<Either<Failure, Product>> sellProduct(Product product);
}