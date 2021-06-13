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
}
