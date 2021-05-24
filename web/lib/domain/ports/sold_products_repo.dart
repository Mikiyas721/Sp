import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/product.dart';


abstract class ISoldProductsRepo{
  Future<Either<Failure, Product>> create(Product product);
  Future<Either<Failure, List<Product>>> fetchMostSold();
}