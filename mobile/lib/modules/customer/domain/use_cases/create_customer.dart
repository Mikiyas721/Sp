import 'package:dartz/dartz.dart';
import '../../../../common/failure.dart';
import '../entities/customer.dart';
import '../ports/customer_repo.dart';

class CreateCustomer {
  final ICustomerRepo _iCustomerRepo;

  const CreateCustomer(this._iCustomerRepo);

  Future<Either<Failure, Customer>> execute(Customer customer) {
    return _iCustomerRepo.create(customer);
  }
}
