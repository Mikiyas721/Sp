import 'package:injectable/injectable.dart';

import '../../../../common/datasource/crud_datasource/crud_datasource.dart';
import '../../../../common/datasource/crud_datasource/rest_crud_datasource.dart';
import '../../../../common/datasource/rest_datasource/rest_datasource.dart';
import '../../../../common/datasource/rest_datasource/rest_response.dart';
import '../dtos/customer_dto.dart';

abstract class CustomerCrudDatasource
    extends CrudDataSource<CustomerDto, RestResponseFailure> {}

@LazySingleton(as:CustomerCrudDatasource)
class CustomerLoopbackDatasource extends LoopbackRestCrudDataSource<CustomerDto>
    implements CustomerCrudDatasource {
  CustomerLoopbackDatasource(RestDataSource restDataSource)
      : super(
          '/customers',
          restDataSource,
          (customer) => customer.toJson(),
          (map) => CustomerDto.fromJson(map),
        );
}
