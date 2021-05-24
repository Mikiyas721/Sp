import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/product.dart';
import 'package:sp_web/domain/ports/product_repo.dart';

class UpdateProduct {
  final IProductRepo _iProductRepo;

  const UpdateProduct(this._iProductRepo);

  Future<Either<Failure, Product>> execute(Product product) {
    return _iProductRepo.update(product);
  }
}
