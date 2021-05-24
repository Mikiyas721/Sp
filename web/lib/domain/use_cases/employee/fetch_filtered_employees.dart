import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/employee.dart';
import 'package:sp_web/domain/ports/employee_repo.dart';

class FetchFilteredEmployees {
  final IEmployeeRepo _iEmployeeRepo;

  const FetchFilteredEmployees(this._iEmployeeRepo);

  Future<Either<Failure, List<Employee>>> execute(String employeePosition) {
    return _iEmployeeRepo.fetchFiltered(employeePosition);
  }
}
