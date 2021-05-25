import 'package:sp_web/common/datasource/crud_datasource/crud_datasource.dart';
import 'package:sp_web/common/datasource/crud_datasource/rest_crud_datasource.dart';
import 'package:sp_web/common/datasource/rest_datasource/rest_datasource.dart';
import 'package:sp_web/common/datasource/rest_datasource/rest_response.dart';
import 'package:sp_web/infrastructure/dtos/admin_dto.dart';

abstract class AdminCrudDatasource
    extends CrudDataSource<AdminDto, RestResponseFailure> {}

class AdminLoopbackDatasource extends LoopbackRestCrudDataSource<AdminDto>
    implements AdminCrudDatasource {
  AdminLoopbackDatasource(RestDataSource restDataSource)
      : super(
          '/admins',
          restDataSource,
          (admin) => admin.toJson(),
          (map) => AdminDto.fromJson(map),
        );
}
