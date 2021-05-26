import 'package:dartz/dartz.dart';
import 'package:sp_web/common/dto.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/admin.dart';
import 'package:sp_web/domain/ports/admin_repo.dart';
import 'package:sp_web/infrastructure/datasources/admin_datasource.dart';
import 'package:sp_web/infrastructure/dtos/admin_dto.dart';

class AdminRepoImpl extends IAdminRepo {
  final AdminCrudDatasource _adminCrudDatasource;

  AdminRepoImpl(this._adminCrudDatasource);

  @override
  Future<Either<Failure, Admin>> create(Admin admin) async {
    final response =
        await _adminCrudDatasource.create(AdminDto.fromDomain(admin));
    //TODO add a remote method on the api that checks if employee exists before adding
    return response.either.fold(
        (l) => left(l),
        (r) => r.toDomain().fold(
            () => left(SimpleFailure("Unable to parse admin dto")),
            (a) => right(a)));
  }

  @override
  Future<Either<Failure, List<Admin>>> fetchAll() async {
    final response = await _adminCrudDatasource.find();
    return response.either.fold(
        (l) => left(l),
        (r) => Dto.toDomainList<Admin, AdminDto>(r).fold(
            () => left(SimpleFailure("Error:parsing admin dto list")),
            (a) => right(a)));
  }

  @override
  Future<Either<Failure, List<Admin>>> fetchFiltered(String privilege) async {
    final response = await _adminCrudDatasource.find(options: {
      "filter": {
        "where": {"privilegeType": "$privilege"}
      }
    });
    return response.fold(
        (l) => left(l),
        (r) => Dto.toDomainList<Admin, AdminDto>(r).fold(
            () => left(SimpleFailure("Error:parsing admin dto list")),
            (a) => right(a)));
  }

  @override
  Future<Either<Failure, List<Admin>>> searchAdmin(
      String prop, String value) async {
    final response = await _adminCrudDatasource.find(options: {
      "filter": {
        "where": {"$prop": "$value"}
      }
    });
    return response.fold(
        (l) => left(l),
        (r) => Dto.toDomainList<Admin, AdminDto>(r).fold(
            () => left(SimpleFailure("Error:parsing admin dto list")),
            (a) => right(a)));
  }

  @override
  Future<Either<Failure, Admin>> update(Admin admin) async {
    final response =
        await _adminCrudDatasource.update(AdminDto.fromDomain(admin));
    return response.either.fold(
        (l) => left(l),
        (r) => r.toDomain().fold(
            () => left(SimpleFailure("Unable to parse admin dto")),
            (a) => right(a)));
  }
}
