import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/product/domain/entities/product.dart';

abstract class IProductRepo{
  Future<Either<Failure, Product>> update(Product product);
}