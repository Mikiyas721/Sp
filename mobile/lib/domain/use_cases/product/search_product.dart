import 'package:dartz/dartz.dart';
import '../../../common/failure.dart';
import '../../entities/product.dart';
import '../../ports/product_repo.dart';

class SearchProduct {
  final IProductRepo _iProductRepo;

  const SearchProduct(this._iProductRepo);

  Future<Either<Failure, List<Product>>> execute(String prop, String value) {
    return _iProductRepo.searchProduct(prop, value);
  }
}
