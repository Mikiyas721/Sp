import 'package:dartz/dartz.dart';
import '../../../../../common/failure.dart';
import '../../entities/product.dart';
import '../../ports/available_products_repo.dart';


class FetchNearExpiration{
  final IAvailableProductsRepo _iAvailableProductsRepo;

  FetchNearExpiration(this._iAvailableProductsRepo);

  Future<Either<Failure, List<Product>>> execute() {
    return _iAvailableProductsRepo.fetchNearExpiration();
  }
}