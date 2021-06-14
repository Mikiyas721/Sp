import 'package:dartz/dartz.dart';
import '../../../../common/failure.dart';
import '../entities/customer.dart';

abstract class ICustomerRepo{
  Future<Either<Failure, Customer>> create(Customer customer);
  Future<Either<Failure, Customer>> update(Customer customer);
  Future<Either<Failure, Customer>> login(Customer customer);
}