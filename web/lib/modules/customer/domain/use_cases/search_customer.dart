import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/customer/domain/entities/customer.dart';
import 'package:sp_web/modules/customer/domain/ports/customer_repo.dart';

@lazySingleton
class SearchCustomer {
  final ICustomerRepo _iCustomerRepo;

  const SearchCustomer(this._iCustomerRepo);

  Future<Either<Failure, List<Customer>>> execute(String prop, String value) {
    return _iCustomerRepo.searchCustomer(prop, value);
  }
}