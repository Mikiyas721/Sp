import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/product/domain/entities/product.dart';
import 'package:sp_web/modules/product/domain/ports/available_products_repo.dart';

@injectable
class SearchAvailableProducts {
  final IAvailableProductsRepo _iAvailableProductsRepo;

  const SearchAvailableProducts(this._iAvailableProductsRepo);

  Future<Either<Failure, List<Product>>> execute(String prop, String value) {
    return _iAvailableProductsRepo.searchAvailableProduct(prop, value);
  }
}
