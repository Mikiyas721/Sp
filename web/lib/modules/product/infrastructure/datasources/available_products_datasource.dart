import 'package:injectable/injectable.dart';
import 'package:sp_web/common/datasource/crud_datasource/crud_datasource.dart';
import 'package:sp_web/common/datasource/crud_datasource/rest_crud_datasource.dart';
import 'package:sp_web/common/datasource/rest_datasource/rest_datasource.dart';
import 'package:sp_web/common/datasource/rest_datasource/rest_request.dart';
import 'package:sp_web/common/datasource/rest_datasource/rest_response.dart';
import 'package:sp_web/modules/product/infrastructure/dtos/product_dto.dart';
import '../../domain/entities/product.dart';

abstract class AvailableProductsCrudDatasource
    extends CrudDataSource<ProductDto, RestResponseFailure> {
  Future<RestResponseWithFailure> addProduct(Product product);
  Future<RestResponseWithFailure> sellProduct(Product product);
}

@LazySingleton(as: AvailableProductsCrudDatasource)
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

  @override
  Future<RestResponseWithFailure> addProduct(Product product) {
    return restDataSource.post(RestRequest(
      url: '$path/addProduct',
      data: ProductDto.fromDomain(product).toJson(),
    ));
  }
  @override
  Future<RestResponseWithFailure> sellProduct(Product product) {
    return restDataSource.post(RestRequest(
      url: '$path/sellProduct',
      data: ProductDto.fromDomain(product).toJson(),
    ));
  }
}
