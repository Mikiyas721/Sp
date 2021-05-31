import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';

abstract class SalaryFailure extends Failure {}

class InvalidSalaryFailure extends SalaryFailure {
  @override
  String get message => 'Invalid Salary';
}

class InsufficientSalaryFailure extends SalaryFailure {
  @override
  String get message => 'Salary should not be zero';
}

class Salary {
  final double salary;

  Salary._(this.salary);

  static Either<SalaryFailure, Salary> createFromString(String salaryString) {
    double salary = double.tryParse(salaryString);
    if (salary == null) return left(InvalidSalaryFailure());
    if (salary == 0) return left(InsufficientSalaryFailure());
    return right(Salary._(salary));
  }
  static Either<SalaryFailure, Salary> create(double salary) {
    if (salary == null) return left(InvalidSalaryFailure());
    if (salary == 0) return left(InsufficientSalaryFailure());
    return right(Salary._(salary));
  }
}
