import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/employee.dart';
import 'package:sp_web/domain/ports/employee_repo.dart';

class UpdateEmployee {
  final IEmployeeRepo _iEmployeeRepo;

  const UpdateEmployee(this._iEmployeeRepo);

  Future<Either<Failure, Employee>> execute(Employee employee) {
    return _iEmployeeRepo.update(employee);
  }
}