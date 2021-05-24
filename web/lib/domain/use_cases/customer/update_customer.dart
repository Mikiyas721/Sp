import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/customer.dart';
import 'package:sp_web/domain/ports/customer_repo.dart';

class UpdateCustomer {
  final ICustomerRepo _iCustomerRepo;

  const UpdateCustomer(this._iCustomerRepo);

  Future<Either<Failure, Customer>> execute(Customer customer) {
    return _iCustomerRepo.update(customer);
  }
}