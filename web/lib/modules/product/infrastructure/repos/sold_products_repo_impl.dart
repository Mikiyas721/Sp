import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/product/domain/entities/product.dart';
import 'package:sp_web/modules/product/domain/ports/sold_products_repo.dart';
import 'package:sp_web/modules/product/infrastructure/datasources/sold_datasource_datasource.dart';

@LazySingleton(as: ISoldProductsRepo)
class SoldProductsRepoImpl extends ISoldProductsRepo {
  final SoldProductCrudDatasource _soldProductCrudDatasource;

  SoldProductsRepoImpl(this._soldProductCrudDatasource);

  @override
  Future<Either<Failure, List<Product>>> fetchMostSold() async {
    //TODO Add remote method on API
  }
}
