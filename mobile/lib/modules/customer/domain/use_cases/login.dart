import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sp_client/modules/customer/domain/entities/customer.dart';
import 'package:sp_client/modules/customer/domain/ports/customer_repo.dart';
import '../../../../common/failure.dart';
import '../../domain/entities/customer.dart';
import '../ports/customer_repo.dart';

@lazySingleton
class Login {
  final ICustomerRepo _iCustomerRepo;

  Login(this._iCustomerRepo);

  Future<Either<Failure, Customer>> execute(Customer customer) {
    return _iCustomerRepo.login(customer);
  }
}
