import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/customer/domain/entities/customer.dart';
import 'package:sp_web/modules/customer/domain/ports/customer_repo.dart';

class FetchAllCustomers {
  final ICustomerRepo _iCustomerRepo;

  const FetchAllCustomers(this._iCustomerRepo);

  Future<Either<Failure, List<Customer>>> execute() {
    return _iCustomerRepo.fetchAll();
  }
}