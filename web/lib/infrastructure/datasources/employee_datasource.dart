import 'package:sp_web/common/datasource/crud_datasource/crud_datasource.dart';
import 'package:sp_web/common/datasource/crud_datasource/rest_crud_datasource.dart';
import 'package:sp_web/common/datasource/rest_datasource/rest_datasource.dart';
import 'package:sp_web/common/datasource/rest_datasource/rest_response.dart';
import 'package:sp_web/infrastructure/dtos/admin_dto.dart';
import 'package:sp_web/infrastructure/dtos/employee_dto.dart';

abstract class EmployeeCrudDatasource
    extends CrudDataSource<EmployeeDto, RestResponseFailure> {}

class EmployeeLoopbackDatasource extends LoopbackRestCrudDataSource<EmployeeDto>
    implements EmployeeCrudDatasource {
  EmployeeLoopbackDatasource(RestDataSource restDataSource)
      : super(
          '/employees',
          restDataSource,
          (employee) => employee.toJson(),
          (map) => EmployeeDto.fromJson(map),
        );
}
