import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sp_web/common/datasource/rest_datasource/rest_datasource.dart';
import 'package:sp_web/common/dto.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/injection.dart';
import 'package:sp_web/modules/product/domain/entities/product.dart';
import 'package:sp_web/modules/product/domain/ports/available_products_repo.dart';
import 'package:sp_web/modules/product/infrastructure/datasources/available_products_datasource.dart';
import 'package:sp_web/modules/product/infrastructure/dtos/product_dto.dart';

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
  Future<Either<Failure, List<Product>>> fetchNearExpiration() async {
    final response = await _availableProductsCrudDatasource.find(options: {
      "filter": {
        "include": includeProductMap,
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
        "include": includeProductMap,
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

  @override
  Future<Either<Failure, List<Product>>> fetchByCategory(String value) async {
    final response = await _availableProductsCrudDatasource.find(options: {
      "filter": {
        "include": includeProductMap,
        "where": {"productCategory": "$value"}
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
  Future<Either<Failure, List<Product>>> searchAvailableProduct(
      String prop, String value) async {
    final response = await _availableProductsCrudDatasource.find(options: {
      "filter": {
        "include": includeProductMap,
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
  Future<Either<Failure, dynamic>> addProduct(Product product) async {
    final imageResponse = await getIt
        .get<RestDataSource>()
        .addProductFile(product.imageName.imageName, product.imageFile);
    print(product.imageName.imageName);
    final response = await _availableProductsCrudDatasource.addProduct(product);
    return response.fold((l) => left(l), (r) => right(r.value));
  }

  @override
  Future<Either<Failure, Product>> sellProduct(Product product) async {
    final response =
        await _availableProductsCrudDatasource.sellProduct(product);
    return response.fold(
        (l) => left(l),
        (r) => ProductDto.fromJson(r.value).toDomain().fold(
            () => left(SimpleFailure("Error:parsing product map to domain")),
            (a) => right(a)));
  }
}
