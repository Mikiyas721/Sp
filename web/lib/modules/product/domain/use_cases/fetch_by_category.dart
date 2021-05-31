import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/product/domain/entities/product.dart';
import 'package:sp_web/modules/product/domain/ports/available_products_repo.dart';

@lazySingleton
class FetchByCategory{
  final IAvailableProductsRepo _iAvailableProductsRepo;

  FetchByCategory(this._iAvailableProductsRepo);

  Future<Either<Failure, List<Product>>> execute(String value) {
    return _iAvailableProductsRepo.fetchByCategory(value);
  }
}