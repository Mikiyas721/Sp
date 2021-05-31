import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/product/domain/entities/product.dart';
import 'package:sp_web/modules/product/domain/ports/sold_products_repo.dart';

@injectable
class FetchMostSold {
  final ISoldProductsRepo _iSoldProductsRepo;

  const FetchMostSold(this._iSoldProductsRepo);

  Future<Either<Failure, List<Product>>> execute() {
    return _iSoldProductsRepo.fetchMostSold();
  }
}
