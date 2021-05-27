import 'package:dartz/dartz.dart';
import '../../../common/failure.dart';
import '../../entities/customer.dart';
import '../../ports/customer_repo.dart';

class FetchActiveCustomers {
  final ICustomerRepo _iCustomerRepo;

  const FetchActiveCustomers(this._iCustomerRepo);

  Future<Either<Failure, List<Customer>>> execute() {
    return _iCustomerRepo.fetchActive();
  }
}