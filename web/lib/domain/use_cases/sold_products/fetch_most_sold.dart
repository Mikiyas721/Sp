import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/product.dart';
import 'package:sp_web/domain/ports/sold_products_repo.dart';

class FetchMostSold {
  final ISoldProductsRepo _iSoldProductsRepo;

  const FetchMostSold(this._iSoldProductsRepo);

  Future<Either<Failure, List<Product>>> execute() {
    return _iSoldProductsRepo.fetchMostSold();
  }
}
