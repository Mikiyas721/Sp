import 'package:dartz/dartz.dart';
import '../../../common/failure.dart';
import '../../entities/customer.dart';
import '../../ports/customer_repo.dart';

class UpdateCustomer {
  final ICustomerRepo _iCustomerRepo;

  const UpdateCustomer(this._iCustomerRepo);

  Future<Either<Failure, Customer>> execute(Customer customer) {
    return _iCustomerRepo.update(customer);
  }
}