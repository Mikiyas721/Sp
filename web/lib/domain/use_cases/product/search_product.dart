import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/product.dart';
import 'package:sp_web/domain/ports/product_repo.dart';

class SearchProduct {
  final IProductRepo _iProductRepo;

  const SearchProduct(this._iProductRepo);

  Future<Either<Failure, List<Product>>> execute(String prop, String value) {
    return _iProductRepo.searchProduct(prop, value);
  }
}
