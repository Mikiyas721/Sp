import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../common/dto.dart';
import '../../../../common/failure.dart';
import '../../domain/entities/customer.dart';
import '../../domain/ports/customer_repo.dart';
import '../datasources/customer_datasource.dart';
import '../dtos/customer_dto.dart';

@LazySingleton(as: ICustomerRepo)
class CustomerRepoImpl extends ICustomerRepo {
  final CustomerCrudDatasource _customerCrudDatasource;

  CustomerRepoImpl(this._customerCrudDatasource);

  @override
  Future<Either<Failure, Customer>> create(Customer customer) async {
    final response =
        await _customerCrudDatasource.create(CustomerDto.fromDomain(customer));
    return response.either.fold(
        (l) => left(l),
        (r) => r.toDomain().fold(
            () => left(SimpleFailure("Unable to parse customer dto")),
            (a) => right(a)));
  }

  @override
  Future<Either<Failure, Customer>> update(Customer customer) async {
    final response =
        await _customerCrudDatasource.update(CustomerDto.fromDomain(customer));
    return response.either.fold(
        (l) => left(l),
        (r) => r.toDomain().fold(
            () => left(SimpleFailure("Unable to customer admin dto")),
            (a) => right(a)));
  }

  @override
  Future<Either<Failure, Customer>> login(Customer customer) async {
    final response = await _customerCrudDatasource.findOne(options: {
      "where": {
        "and": [
          {"phoneNumber": "${customer.phoneNumber}"},
          {"password": "${customer.password}"}
        ]
      }
    });
    return response.either.fold(
            (l) => left(l),
            (r) => r.toDomain().fold(
                () => left(SimpleFailure("Error:Unable to map to Admin")),
                (a) => right(a)));
  }
}
