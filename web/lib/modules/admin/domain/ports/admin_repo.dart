import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/admin/domain/entities/admin.dart';

abstract class IAdminRepo {
  Future<Either<Failure, Admin>> create(Admin admin);
  Future<Either<Failure, List<Admin>>> fetchAll();
  Future<Either<Failure, List<Admin>>> fetchFiltered(String privilege);
  Future<Either<Failure, List<Admin>>> searchAdmin(String prop, String value);
  Future<Either<Failure, Admin>> update(Admin admin);
  Future<Either<Failure, Admin>> login(Admin admin);
}