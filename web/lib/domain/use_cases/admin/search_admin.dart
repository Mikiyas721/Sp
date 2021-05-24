import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/admin.dart';
import 'package:sp_web/domain/ports/admin_repo.dart';

class SearchAdmin {
  final IAdminRepo _iAdminRepo;

  const SearchAdmin(this._iAdminRepo);

  Future<Either<Failure, List<Admin>>> execute(String prop, String value) {
    return _iAdminRepo.searchAdmin(prop,value);
  }
}
