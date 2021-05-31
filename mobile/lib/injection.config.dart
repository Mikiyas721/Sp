// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'common/datasource/dio_rest_datasource.dart' as _i6;
import 'common/datasource/rest_datasource/rest_datasource.dart' as _i5;
import 'modules/customer/domain/ports/customer_repo.dart' as _i4;
import 'modules/customer/domain/use_cases/login.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.Login>(() => _i3.Login(get<_i4.ICustomerRepo>()));
  gh.lazySingleton<_i5.RestDataSource>(() => _i6.DioRestDataSource());
  return get;
}