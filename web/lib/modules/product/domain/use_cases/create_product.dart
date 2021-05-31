import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/product/domain/entities/product.dart';
import 'package:sp_web/modules/product/domain/ports/product_repo.dart';

class CreateProduct{
  final IProductRepo _iProductRepo;

  const CreateProduct(this._iProductRepo);
  Future<Either<Failure, Product>>execute(Product product){
    return _iProductRepo.create(product);
  }
}