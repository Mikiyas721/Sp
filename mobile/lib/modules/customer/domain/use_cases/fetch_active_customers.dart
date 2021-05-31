import 'package:dartz/dartz.dart';
import '../../../../common/failure.dart';
import '../../domain/entities/customer.dart';
import '../../domain/ports/customer_repo.dart';

class FetchActiveCustomers {
  final ICustomerRepo _iCustomerRepo;

  const FetchActiveCustomers(this._iCustomerRepo);

  Future<Either<Failure, List<Customer>>> execute() {
    return _iCustomerRepo.fetchActive();
  }
}