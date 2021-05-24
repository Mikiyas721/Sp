import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/product.dart';
import 'package:sp_web/domain/ports/available_products_repo.dart';


class DeleteAvailable{
  final IAvailableProductsRepo _iAvailableProductsRepo;

  DeleteAvailable(this._iAvailableProductsRepo);

  Future<Either<Failure, Product>> execute(Product product) {
    return _iAvailableProductsRepo.delete(product);
  }
}