import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../common/failure.dart';
import '../entities/product.dart';
import '../ports/available_products_repo.dart';

@injectable
class FetchLatest{
  final IAvailableProductsRepo _iAvailableProductsRepo;

  FetchLatest(this._iAvailableProductsRepo);

  Future<Either<Failure, List<Product>>> execute() {
    return _iAvailableProductsRepo.fetchLatest();
  }
}