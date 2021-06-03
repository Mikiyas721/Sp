import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/product/domain/entities/product.dart';
import 'package:sp_web/modules/product/domain/ports/product_repo.dart';
import 'package:sp_web/modules/product/infrastructure/datasources/product_datasource.dart';
import 'package:sp_web/modules/product/infrastructure/dtos/product_dto.dart';

@LazySingleton(as: IProductRepo)
class ProductRepoImpl extends IProductRepo {
  final ProductCrudDatasource _productCrudDatasource;

  ProductRepoImpl(this._productCrudDatasource);

  @override
  Future<Either<Failure, Product>> update(Product product) async {
    final response =
        await _productCrudDatasource.update(ProductDto.fromDomain(product));
    return response.either.fold(
        (l) => left(l),
        (r) => r.toDomain().fold(
            () => left(SimpleFailure("Unable to parse product dto")),
            (a) => right(a)));
  }
}
