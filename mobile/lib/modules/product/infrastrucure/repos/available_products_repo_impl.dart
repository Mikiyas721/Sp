import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../common/dto.dart';
import '../../../../common/failure.dart';
import '../../domain/entities/product.dart';
import '../../domain/ports/available_products_repo.dart';
import '../datasources/available_products_datasource.dart';
import '../dtos/product_dto.dart';

@LazySingleton(as: IAvailableProductsRepo)
class AvailableProductsRepoImpl extends IAvailableProductsRepo {
  final AvailableProductsCrudDatasource _availableProductsCrudDatasource;

  AvailableProductsRepoImpl(this._availableProductsCrudDatasource);

  static const includeProductMap = {
    "relation": "product",
    "scope": {
      "fields": [
        "imageName",
        "productName",
        "brandName",
        "category",
        "description",
      ]
    }
  };

  @override
  Future<Either<Failure, List<Product>>> fetchAll() async {
    final response = await _availableProductsCrudDatasource.find(options: {
      "filter": {
        "include": includeProductMap,
      }
    });
    return response.either.fold(
        (l) => left(l),
        (r) => Dto.toDomainList<Product, ProductDto>(r).fold(
            () =>
                left(SimpleFailure("Error:parsing available product dto list")),
            (a) => right(a)));
  }

  @override
  Future<Either<Failure, List<Product>>> fetchByCategory(
      String category) async {
    final response = await _availableProductsCrudDatasource.find(options: {
      "filter": {
        "include": {
          "relation": "product",
          "scope": {
            "where": {
              "category": {"like": "$category"}
            },
            "fields": [
              "imageName",
              "productName",
              "brandName",
              "category",
              "description",
            ]
          }
        },
      }
    });
    return response.either.fold(
        (l) => left(l),
        (r) => Dto.toDomainList<Product, ProductDto>(r).fold(
            () => left(
                SimpleFailure("Error:parsing product dto list by category")),
            (a) => right(a)));
  }

  @override
  Future<Either<Failure, List<Product>>> fetchLatest() async {
    final response = await _availableProductsCrudDatasource.find(options: {
      "filter": {
        "include": includeProductMap,
        "where": {
          "createdAt": {
            "gt":
                "${DateTime.now().subtract(Duration(days: 10)).toIso8601String()}"
          }
        }
      }
    });
    return response.either.fold(
        (l) => left(l),
        (r) => Dto.toDomainList<Product, ProductDto>(r).fold(
            () => left(SimpleFailure("Error:parsing product dto list latest")),
            (a) => right(a)));
  }
}
