import 'package:dartz/dartz.dart';
import '../../../../common/dto.dart';
import '../../../../common/failure.dart';
import '../../domain/entities/product.dart';
import '../../domain/ports/available_products_repo.dart';
import '../datasources/available_products_datasource.dart';
import '../dtos/product_dto.dart';

class AvailableProductsRepoImpl extends IAvailableProductsRepo {
  final AvailableProductsCrudDatasource _availableProductsCrudDatasource;

  AvailableProductsRepoImpl(this._availableProductsCrudDatasource);

  @override
  Future<Either<Failure, Product>> delete(Product product) {
    //TODO Add remote method on API
  }

  @override
  Future<Either<Failure, List<Product>>> fetchAll() async {
    final response = await _availableProductsCrudDatasource.find();
    return response.either.fold(
        (l) => left(l),
        (r) => Dto.toDomainList<Product, ProductDto>(r).fold(
            () =>
                left(SimpleFailure("Error:parsing available product dto list")),
            (a) => right(a)));
  }

  @override
  Future<Either<Failure, List<Product>>> fetchNearExpiration() async {
    final response = await _availableProductsCrudDatasource.find(options: {
      "filter": {
        "where": {
          "manDate": {
            "gt":
                "${DateTime.now().subtract(Duration(days: 180)).toIso8601String()}"
          }
        }
      }
    });
    return response.fold(
        (l) => left(l),
        (r) => Dto.toDomainList<Product, ProductDto>(r).fold(
            () =>
                left(SimpleFailure("Error:parsing available product dto list")),
            (a) => right(a)));
  }

  @override
  Future<Either<Failure, List<Product>>> fetchRunningLow() async {
    final response = await _availableProductsCrudDatasource.find(options: {
      "filter": {
        "where": {
          "quantity": {"lt": 100}
        }
      }
    });
    return response.fold(
        (l) => left(l),
        (r) => Dto.toDomainList<Product, ProductDto>(r).fold(
            () =>
                left(SimpleFailure("Error:parsing available product dto list")),
            (a) => right(a)));
  }

  @override
  Future<Either<Failure, Product>> update(Product product) async {
    final response = await _availableProductsCrudDatasource
        .update(ProductDto.fromDomain(product));
    return response.either.fold(
        (l) => left(l),
        (r) => r.toDomain().fold(
            () => left(SimpleFailure("Unable to parse product dto")),
            (a) => right(a)));
  }
}