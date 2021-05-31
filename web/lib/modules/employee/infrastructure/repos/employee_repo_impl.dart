import 'package:dartz/dartz.dart';
import 'package:sp_web/common/dto.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/employee/domain/entities/employee.dart';
import 'package:sp_web/modules/employee/domain/ports/employee_repo.dart';
import 'package:sp_web/modules/employee/infrastructure/datasources/employee_datasource.dart';
import 'package:sp_web/modules/employee/infrastructure/dtos/employee_dto.dart';

class EmployeeRepoImpl extends IEmployeeRepo {
  final EmployeeCrudDatasource _employeeCrudDatasource;

  EmployeeRepoImpl(this._employeeCrudDatasource);

  @override
  Future<Either<Failure, Employee>> create(Employee employee) async {
    final response =
        await _employeeCrudDatasource.create(EmployeeDto.fromDomain(employee));
    return response.either.fold(
        (l) => left(l),
        (r) => r.toDomain().fold(
            () => left(SimpleFailure("Unable to parse employee dto")),
            (a) => right(a)));
  }

  @override
  Future<Either<Failure, List<Employee>>> fetchAll() async {
    final response = await _employeeCrudDatasource.find();
    return response.either.fold(
        (l) => left(l),
        (r) => Dto.toDomainList<Employee, EmployeeDto>(r).fold(
            () => left(SimpleFailure("Error:parsing employee dto list")),
            (a) => right(a)));
  }

  @override
  Future<Either<Failure, List<Employee>>> fetchFiltered(
      String employeePosition) async {
    final response = await _employeeCrudDatasource.find(options: {
      "filter": {
        "where": {"employeePosition": "$employeePosition"}
      }
    });
    return response.fold(
        (l) => left(l),
        (r) => Dto.toDomainList<Employee, EmployeeDto>(r).fold(
            () => left(SimpleFailure("Error:parsing employee dto list")),
            (a) => right(a)));
  }

  @override
  Future<Either<Failure, List<Employee>>> searchEmployee(
      String prop, String value) async {
    final response = await _employeeCrudDatasource.find(options: {
      "filter": {
        "where": {"$prop": "$value"}
      }
    });
    return response.fold(
        (l) => left(l),
        (r) => Dto.toDomainList<Employee, EmployeeDto>(r).fold(
            () => left(SimpleFailure("Error:parsing employee dto list")),
            (a) => right(a)));
  }

  @override
  Future<Either<Failure, Employee>> update(Employee employee) async {
    final response =
        await _employeeCrudDatasource.update(EmployeeDto.fromDomain(employee));
    return response.either.fold(
        (l) => left(l),
        (r) => r.toDomain().fold(
            () => left(SimpleFailure("Unable to parse employee dto")),
            (a) => right(a)));
  }
}
