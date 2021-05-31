import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/employee/domain/entities/employee.dart';

abstract class IEmployeeRepo{
  Future<Either<Failure, Employee>> create(Employee employee);
  Future<Either<Failure, List<Employee>>> fetchAll();
  Future<Either<Failure, List<Employee>>> fetchFiltered(String employeePosition);
  Future<Either<Failure, List<Employee>>> searchEmployee(String prop, String value);
  Future<Either<Failure, Employee>> update(Employee employee);
}