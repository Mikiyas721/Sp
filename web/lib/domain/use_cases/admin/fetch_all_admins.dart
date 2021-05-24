import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/admin.dart';
import 'package:sp_web/domain/ports/admin_repo.dart';

class FetchAllAdmins {
  final IAdminRepo _iAdminRepo;

  const FetchAllAdmins(this._iAdminRepo);

  Future<Either<Failure, List<Admin>>> execute() {
    return _iAdminRepo.fetchAll();
  }
}
