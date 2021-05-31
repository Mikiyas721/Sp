import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/admin/domain/entities/admin.dart';
import 'package:sp_web/modules/admin/domain/ports/admin_repo.dart';

@lazySingleton
class CreateAdmin {
  final IAdminRepo _iAdminRepo;

  const CreateAdmin(this._iAdminRepo);

  Future<Either<Failure, Admin>> execute(Admin admin) {
    return _iAdminRepo.create(admin);
  }
}
