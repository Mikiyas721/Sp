import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/employee/domain/entities/employee.dart';
import 'package:sp_web/modules/employee/domain/ports/employee_repo.dart';

@injectable
class CreateEmployee {
  final IEmployeeRepo _iEmployeeRepo;

  const CreateEmployee(this._iEmployeeRepo);

  Future<Either<Failure, Employee>> execute(Employee employee) {
    return _iEmployeeRepo.create(employee);
  }
}
