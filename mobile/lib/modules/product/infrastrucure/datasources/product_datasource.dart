import 'package:injectable/injectable.dart';

import '../../../../common/datasource/crud_datasource/crud_datasource.dart';
import '../../../../common/datasource/crud_datasource/rest_crud_datasource.dart';
import '../../../../common/datasource/rest_datasource/rest_datasource.dart';
import '../../../../common/datasource/rest_datasource/rest_response.dart';
import '../dtos/product_dto.dart';

abstract class ProductCrudDatasource
    extends CrudDataSource<ProductDto, RestResponseFailure> {}

@LazySingleton(as: ProductCrudDatasource)
class ProductLoopbackDatasource extends LoopbackRestCrudDataSource<ProductDto>
    implements ProductCrudDatasource {
  ProductLoopbackDatasource(RestDataSource restDataSource)
      : super(
          '/products',
          restDataSource,
          (product) => product.toJson(),
          (map) => ProductDto.fromJson(map),
        );
}
