import 'package:dartz/dartz.dart';
import '../../../../common/dto.dart';
import '../../../../common/failure.dart';
import '../../domain/entities/product.dart';
import '../../domain/ports/product_repo.dart';
import '../datasources/product_datasource.dart';
import '../dtos/product_dto.dart';

class ProductRepoImpl extends IProductRepo {
  final ProductCrudDatasource _productCrudDatasource;

  ProductRepoImpl(this._productCrudDatasource);

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
}
