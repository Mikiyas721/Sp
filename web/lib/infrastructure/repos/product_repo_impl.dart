import 'package:dartz/dartz.dart';
import 'package:sp_web/common/dto.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/product.dart';
import 'package:sp_web/domain/ports/product_repo.dart';
import 'package:sp_web/infrastructure/datasources/product_datasource.dart';
import 'package:sp_web/infrastructure/dtos/product_dto.dart';

class ProductRepoImpl extends IProductRepo {
  final ProductCrudDatasource _productCrudDatasource;

  ProductRepoImpl(this._productCrudDatasource);

  @override
  Future<Either<Failure, Product>> create(Product product) async{
    final response =
        await _productCrudDatasource.create(ProductDto.fromDomain(product));
    //TODO use a remote method instead
    return response.either.fold(
            (l) => left(l),
            (r) => r.toDomain().fold(
                () => left(SimpleFailure("Unable to parse product dto")),
                (a) => right(a)));
  }

  @override
  Future<Either<Failure, List<Product>>> searchProduct(
      String prop, String value) async {
    final response = await _productCrudDatasource.find(options: {
      "filter": {
        "where": {"$prop": "$value"}
      }
    });
    return response.fold(
        (l) => left(l),
        (r) => Dto.toDomainList<Product, ProductDto>(r).fold(
            () => left(SimpleFailure("Error:parsing product dto list")),
            (a) => right(a)));
  }

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
