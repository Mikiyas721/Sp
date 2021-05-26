import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/product.dart';
import 'package:sp_web/domain/ports/sold_products_repo.dart';
import 'package:sp_web/infrastructure/datasources/sold_datasource_datasource.dart';

class SoldProductsRepoImpl extends ISoldProductsRepo {
  final SoldProductCrudDatasource _soldProductCrudDatasource;

  SoldProductsRepoImpl(this._soldProductCrudDatasource);

  @override
  Future<Either<Failure, Product>> create(Product product) {
    //TODO Add remote method on API
  }

  @override
  Future<Either<Failure, List<Product>>> fetchMostSold() async {
    //TODO Add remote method on API
  }
}
