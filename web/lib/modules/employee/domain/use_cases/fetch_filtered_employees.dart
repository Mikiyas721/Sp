import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/employee/domain/entities/employee.dart';
import 'package:sp_web/modules/employee/domain/ports/employee_repo.dart';

@lazySingleton
class FetchFilteredEmployees {
  final IEmployeeRepo _iEmployeeRepo;

  const FetchFilteredEmployees(this._iEmployeeRepo);

  Future<Either<Failure, List<Employee>>> execute(String employeePosition) {
    return _iEmployeeRepo.fetchFiltered(employeePosition);
  }
}
