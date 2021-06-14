import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../common/failure.dart';
import '../entities/product.dart';
import '../ports/available_products_repo.dart';

@injectable
class FetchByCategory{
  final IAvailableProductsRepo _iAvailableProductsRepo;

  FetchByCategory(this._iAvailableProductsRepo);

  Future<Either<Failure, List<Product>>> execute(String category) {
    return _iAvailableProductsRepo.fetchByCategory(category);
  }
}