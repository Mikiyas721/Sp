import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/admin/domain/entities/admin.dart';
import 'package:sp_web/modules/admin/domain/ports/admin_repo.dart';

@lazySingleton
class FetchAllAdmins {
  final IAdminRepo _iAdminRepo;

  const FetchAllAdmins(this._iAdminRepo);

  Future<Either<Failure, List<Admin>>> execute() {
    return _iAdminRepo.fetchAll();
  }
}
