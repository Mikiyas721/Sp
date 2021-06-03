import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/product/domain/entities/product.dart';
import 'package:sp_web/modules/product/domain/ports/available_products_repo.dart';

@lazySingleton
class SellProduct {
  final IAvailableProductsRepo _iAvailableProductsRepo;

  SellProduct(this._iAvailableProductsRepo);

  Future<Either<Failure, Product>> execute(Product product) {
    return _iAvailableProductsRepo.sellProduct(product);
  }
}
