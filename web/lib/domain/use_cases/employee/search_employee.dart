import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/employee.dart';
import 'package:sp_web/domain/ports/employee_repo.dart';

class SearchEmployee {
  final IEmployeeRepo _iEmployeeRepo;

  const SearchEmployee(this._iEmployeeRepo);

  Future<Either<Failure, List<Employee>>> execute(String prop, String value) {
    return _iEmployeeRepo.searchEmployee(prop, value);
  }
}
