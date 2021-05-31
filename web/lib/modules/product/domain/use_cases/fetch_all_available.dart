import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/product/domain/entities/product.dart';
import 'package:sp_web/modules/product/domain/ports/available_products_repo.dart';


class FetchAllAvailable{
  final IAvailableProductsRepo _iAvailableProductsRepo;

  FetchAllAvailable(this._iAvailableProductsRepo);

  Future<Either<Failure, List<Product>>> execute() {
    return _iAvailableProductsRepo.fetchAll();
  }
}