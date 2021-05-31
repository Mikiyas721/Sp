import 'package:dartz/dartz.dart';
import '../../../../common/failure.dart';
import '../entities/product.dart';

abstract class IAvailableProductsRepo{
  Future<Either<Failure, List<Product>>> fetchAll();
  Future<Either<Failure, List<Product>>> fetchRunningLow();
  Future<Either<Failure, List<Product>>> fetchNearExpiration();
  Future<Either<Failure, Product>> update(Product product);
  Future<Either<Failure, Product>> delete(Product product);
}