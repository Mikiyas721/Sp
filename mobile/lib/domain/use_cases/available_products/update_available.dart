import 'package:dartz/dartz.dart';
import '../../../common/failure.dart';
import '../../entities/product.dart';
import '../../ports/available_products_repo.dart';


class UpdateAvailable{
  final IAvailableProductsRepo _iAvailableProductsRepo;

  UpdateAvailable(this._iAvailableProductsRepo);

  Future<Either<Failure, Product>> execute(Product product) {
    return _iAvailableProductsRepo.update(product);
  }
}