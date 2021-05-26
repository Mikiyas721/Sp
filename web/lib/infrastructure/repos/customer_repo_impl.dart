import 'package:dartz/dartz.dart';
import 'package:sp_web/common/dto.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/customer.dart';
import 'package:sp_web/domain/ports/customer_repo.dart';
import 'package:sp_web/infrastructure/datasources/customer_datasource.dart';
import 'package:sp_web/infrastructure/dtos/customer_dto.dart';

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
  Future<Either<Failure, List<Customer>>> fetchActive() {
    // TODO: implement fetchActive
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Customer>>> fetchAll() async {
    final response = await _customerCrudDatasource.find();
    return response.either.fold(
        (l) => left(l),
        (r) => Dto.toDomainList<Customer, CustomerDto>(r).fold(
            () => left(SimpleFailure("Error:parsing customer dto list")),
            (a) => right(a)));
  }

  @override
  Future<Either<Failure, List<Customer>>> fetchNew() async {
    final response = await _customerCrudDatasource.find(options: {
      "filter": {
        "where": {
          "createdAt": {
            "gt": {
              "${DateTime.now().subtract(Duration(days: 5)).toIso8601String()}"
            }
          }
        }
      }
    });
    return response.fold(
        (l) => left(l),
        (r) => Dto.toDomainList<Customer, CustomerDto>(r).fold(
            () => left(SimpleFailure("Error:parsing customer dto list")),
            (a) => right(a)));
  }

  @override
  Future<Either<Failure, List<Customer>>> searchCustomer(
      String prop, String value) async {
    final response = await _customerCrudDatasource.find(options: {
      "filter": {
        "where": {"$prop": "$value"}
      }
    });
    return response.fold(
        (l) => left(l),
        (r) => Dto.toDomainList<Customer, CustomerDto>(r).fold(
            () => left(SimpleFailure("Error:parsing customer dto list")),
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
}
