import 'package:injectable/injectable.dart';
import 'package:sp_web/common/datasource/crud_datasource/crud_datasource.dart';
import 'package:sp_web/common/datasource/crud_datasource/rest_crud_datasource.dart';
import 'package:sp_web/common/datasource/rest_datasource/rest_datasource.dart';
import 'package:sp_web/common/datasource/rest_datasource/rest_response.dart';
import 'package:sp_web/modules/product/infrastructure/dtos/product_dto.dart';

abstract class SoldProductCrudDatasource
    extends CrudDataSource<ProductDto, RestResponseFailure> {}

@LazySingleton(as: SoldProductCrudDatasource)
class SoldProductLoopbackDatasource
    extends LoopbackRestCrudDataSource<ProductDto>
    implements SoldProductCrudDatasource {
  SoldProductLoopbackDatasource(RestDataSource restDataSource)
      : super(
          '/soldProducts',
          restDataSource,
          (product) => product.toJson(),
          (map) => ProductDto.fromJson(map),
        );
}
