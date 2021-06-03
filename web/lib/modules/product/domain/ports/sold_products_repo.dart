import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/product/domain/entities/product.dart';


abstract class ISoldProductsRepo{
  Future<Either<Failure, List<Product>>> fetchMostSold();
}