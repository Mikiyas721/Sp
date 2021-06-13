import 'package:dartz/dartz.dart';
import '../../../../common/failure.dart';
import '../entities/product.dart';

abstract class IAvailableProductsRepo{
  Future<Either<Failure, List<Product>>> fetchAll();
}