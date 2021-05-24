import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/product.dart';
import 'package:sp_web/domain/ports/available_products_repo.dart';


class FetchNearExpiration{
  final IAvailableProductsRepo _iAvailableProductsRepo;

  FetchNearExpiration(this._iAvailableProductsRepo);

  Future<Either<Failure, List<Product>>> execute() {
    return _iAvailableProductsRepo.fetchNearExpiration();
  }
}