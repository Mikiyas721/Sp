import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/employee.dart';
import 'package:sp_web/domain/ports/employee_repo.dart';

class FetchAllEmployees {
  final IEmployeeRepo _iEmployeeRepo;

  const FetchAllEmployees(this._iEmployeeRepo);

  Future<Either<Failure, List<Employee>>> execute() {
    return _iEmployeeRepo.fetchAll();
  }
}
