import 'package:dartz/dartz.dart';
import '../../../../../common/failure.dart';
import '../../entities/product.dart';
import '../../ports/available_products_repo.dart';


class FetchAllAvailable{
  final IAvailableProductsRepo _iAvailableProductsRepo;

  FetchAllAvailable(this._iAvailableProductsRepo);

  Future<Either<Failure, List<Product>>> execute() {
    return _iAvailableProductsRepo.fetchAll();
  }
}