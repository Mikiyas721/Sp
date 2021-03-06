import 'package:dartz/dartz.dart';
import '../../../../common/failure.dart';
import '../entities/product.dart';

abstract class IAvailableProductsRepo{
  Future<Either<Failure, List<Product>>> fetchByCategory(String category);
  Future<Either<Failure, List<Product>>> fetchLatest();
  Future<Either<Failure, List<Product>>> fetchAll();
}