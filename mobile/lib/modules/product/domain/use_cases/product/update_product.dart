import 'package:dartz/dartz.dart';
import '../../../../../common/failure.dart';
import '../../entities/product.dart';
import '../../ports/product_repo.dart';

class UpdateProduct {
  final IProductRepo _iProductRepo;

  const UpdateProduct(this._iProductRepo);

  Future<Either<Failure, Product>> execute(Product product) {
    return _iProductRepo.update(product);
  }
}
