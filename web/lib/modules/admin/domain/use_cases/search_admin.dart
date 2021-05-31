import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/admin/domain/entities/admin.dart';
import 'package:sp_web/modules/admin/domain/ports/admin_repo.dart';

@lazySingleton
class SearchAdmin {
  final IAdminRepo _iAdminRepo;

  const SearchAdmin(this._iAdminRepo);

  Future<Either<Failure, List<Admin>>> execute(String prop, String value) {
    return _iAdminRepo.searchAdmin(prop,value);
  }
}
