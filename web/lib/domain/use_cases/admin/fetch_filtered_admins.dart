import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/admin.dart';
import 'package:sp_web/domain/ports/admin_repo.dart';

class FetchFilteredAdmins {
  final IAdminRepo _iAdminRepo;

  const FetchFilteredAdmins(this._iAdminRepo);

  Future<Either<Failure, List<Admin>>> execute(String privilege) {
    return _iAdminRepo.fetchFiltered(privilege);
  }
}
