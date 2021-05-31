import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/product/domain/entities/product.dart';
import 'package:sp_web/modules/product/domain/ports/product_repo.dart';

@lazySingleton
class AddProduct{
  final IProductRepo _iProductRepo;

  const AddProduct(this._iProductRepo);
  Future<Either<Failure, Product>>execute(Product product){
    return _iProductRepo.create(product);
  }
}