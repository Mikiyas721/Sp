import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/customer/domain/entities/customer.dart';

abstract class ICustomerRepo{
  Future<Either<Failure, Customer>> create(Customer customer);
  Future<Either<Failure, List<Customer>>> fetchAll();
  Future<Either<Failure, List<Customer>>> fetchActive();
  Future<Either<Failure, List<Customer>>> fetchNew();
  Future<Either<Failure, List<Customer>>> searchCustomer(String prop, String value);
  Future<Either<Failure, Customer>> update(Customer customer);
}