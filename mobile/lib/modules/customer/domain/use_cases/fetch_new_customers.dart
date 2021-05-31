import 'package:dartz/dartz.dart';
import '../../../../common/failure.dart';
import '../entities/customer.dart';
import '../ports/customer_repo.dart';

class FetchNewCustomers {
  final ICustomerRepo _iCustomerRepo;

  const FetchNewCustomers(this._iCustomerRepo);

  Future<Either<Failure, List<Customer>>> execute() {
    return _iCustomerRepo.fetchNew();
  }
}