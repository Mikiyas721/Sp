import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/admin.dart';
import 'package:sp_web/domain/ports/admin_repo.dart';

class DeleteAdmin {
  final IAdminRepo _iAdminRepo;

  const DeleteAdmin(this._iAdminRepo);

  Future<Either<Failure, Admin>> execute(Admin admin) {
    return _iAdminRepo.delete(admin);
  }
}
