import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/customer/domain/entities/customer.dart';
import 'package:sp_web/modules/customer/domain/ports/customer_repo.dart';

class FetchNewCustomers {
  final ICustomerRepo _iCustomerRepo;

  const FetchNewCustomers(this._iCustomerRepo);

  Future<Either<Failure, List<Customer>>> execute() {
    return _iCustomerRepo.fetchNew();
  }
}