import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/product/domain/entities/product.dart';
import 'package:sp_web/modules/product/domain/ports/product_repo.dart';

@injectable
class SearchProduct {
  final IProductRepo _iProductRepo;

  const SearchProduct(this._iProductRepo);

  Future<Either<Failure, List<Product>>> execute(String prop, String value) {
    return _iProductRepo.searchProduct(prop, value);
  }
}
