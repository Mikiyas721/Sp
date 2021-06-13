import '../../../../common/datasource/crud_datasource/crud_datasource.dart';
import '../../../../common/datasource/crud_datasource/rest_crud_datasource.dart';
import '../../../../common/datasource/rest_datasource/rest_datasource.dart';
import '../../../../common/datasource/rest_datasource/rest_response.dart';
import '../dtos/product_dto.dart';

abstract class AvailableProductsCrudDatasource
    extends CrudDataSource<ProductDto, RestResponseFailure> {}

class AvailableProductsLoopbackDatasource
    extends LoopbackRestCrudDataSource<ProductDto>
    implements AvailableProductsCrudDatasource {
  AvailableProductsLoopbackDatasource(RestDataSource restDataSource)
      : super(
          '/availableProducts',
          restDataSource,
          (available) => available.toJson(),
          (map) => ProductDto.fromAvailableJson(map),
        );
}
