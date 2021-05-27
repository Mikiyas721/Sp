import 'package:dartz/dartz.dart';
import '../../../common/failure.dart';
import '../../entities/product.dart';
import '../../ports/available_products_repo.dart';


class DeleteAvailable{
  final IAvailableProductsRepo _iAvailableProductsRepo;

  DeleteAvailable(this._iAvailableProductsRepo);

  Future<Either<Failure, Product>> execute(Product product) {
    return _iAvailableProductsRepo.delete(product);
  }
}