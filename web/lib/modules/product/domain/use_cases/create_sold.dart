import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/product/domain/entities/product.dart';
import 'package:sp_web/modules/product/domain/ports/sold_products_repo.dart';

class CreateSold {
  final ISoldProductsRepo _iSoldProductsRepo;

  const CreateSold(this._iSoldProductsRepo);

  Future<Either<Failure, Product>> execute(Product product) {
    return _iSoldProductsRepo.create(product);
  }
}
