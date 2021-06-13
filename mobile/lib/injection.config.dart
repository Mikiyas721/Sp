// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'common/datasource/dio_rest_datasource.dart' as _i10;
import 'common/datasource/rest_datasource/rest_datasource.dart' as _i9;
import 'config/config.definition.dart' as _i3;
import 'config/development_ip.config.dart' as _i4;
import 'config/development_local.config.dart' as _i5;
import 'modules/customer/domain/ports/customer_repo.dart' as _i8;
import 'modules/customer/domain/use_cases/login.dart' as _i7;
import 'modules/product/application/load_products/load_products_bloc.dart'
    as _i6;

const String _development_ip = 'development_ip';
const String _development_local = 'development_local';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ConfigDefinition>(
      () => _i4.DevelopmentConfigDefinition(),
      registerFor: {_development_ip});
  gh.lazySingleton<_i3.ConfigDefinition>(
      () => _i5.DevelopmentConfigDefinition(),
      registerFor: {_development_local});
  gh.factory<_i6.LoadProductsBloc>(() => _i6.LoadProductsBloc());
  gh.lazySingleton<_i7.Login>(() => _i7.Login(get<_i8.ICustomerRepo>()));
  gh.lazySingleton<_i9.RestDataSource>(
      () => _i10.DioRestDataSource(get<_i3.ConfigDefinition>()));
  return get;
}
