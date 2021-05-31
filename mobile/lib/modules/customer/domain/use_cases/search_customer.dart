import 'package:dartz/dartz.dart';
import '../../../../common/failure.dart';
import '../entities/customer.dart';
import '../ports/customer_repo.dart';

class SearchCustomer {
  final ICustomerRepo _iCustomerRepo;

  const SearchCustomer(this._iCustomerRepo);

  Future<Either<Failure, List<Customer>>> execute(String prop, String value) {
    return _iCustomerRepo.searchCustomer(prop, value);
  }
}