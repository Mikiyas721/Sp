// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'common/datasource/dio_rest_datasource.dart' as _i5;
import 'common/datasource/rest_datasource/rest_datasource.dart' as _i4;
import 'modules/admin/application/login/login_bloc.dart' as _i3;
import 'modules/admin/domain/ports/admin_repo.dart' as _i7;
import 'modules/admin/domain/use_cases/login.dart' as _i9;
import 'modules/admin/infrastructure/datasources/admin_datasource.dart' as _i6;
import 'modules/admin/infrastructure/repos/admin_repo_impl.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.LoginBloc>(() => _i3.LoginBloc());
  gh.lazySingleton<_i4.RestDataSource>(() => _i5.DioRestDataSource());
  gh.lazySingleton<_i6.AdminCrudDatasource>(
      () => _i6.AdminLoopbackDatasource(get<_i4.RestDataSource>()));
  gh.lazySingleton<_i7.IAdminRepo>(
      () => _i8.AdminRepoImpl(get<_i6.AdminCrudDatasource>()));
  gh.lazySingleton<_i9.Login>(() => _i9.Login(get<_i7.IAdminRepo>()));
  return get;
}
