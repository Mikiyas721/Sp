import 'package:dartz/dartz.dart';
import '../../../../../common/failure.dart';
import '../../entities/product.dart';
import '../../ports/product_repo.dart';

class CreateProduct{
  final IProductRepo _iProductRepo;

  const CreateProduct(this._iProductRepo);
  Future<Either<Failure, Product>>execute(Product product){
    return _iProductRepo.create(product);
  }
}