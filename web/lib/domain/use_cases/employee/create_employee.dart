import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/employee.dart';
import 'package:sp_web/domain/ports/employee_repo.dart';

class CreateEmployee {
  final IEmployeeRepo _iEmployeeRepo;

  const CreateEmployee(this._iEmployeeRepo);

  Future<Either<Failure, Employee>> execute(Employee employee) {
    return _iEmployeeRepo.create(employee);
  }
}
