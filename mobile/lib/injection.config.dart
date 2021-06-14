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
import 'modules/customer/application/login/login_bloc.dart' as _i8;
import 'modules/customer/domain/ports/customer_repo.dart' as _i15;
import 'modules/customer/domain/use_cases/login.dart' as _i17;
import 'modules/customer/infrastructure/datasources/customer_datasource.dart'
    as _i12;
import 'modules/customer/infrastructure/repos/customer_repo_impl.dart' as _i16;
import 'modules/product/application/load_by_category/load_by_category_bloc.dart'
    as _i6;
import 'modules/product/application/load_latest_products/load_latest_products_bloc.dart'
    as _i7;
import 'modules/product/domain/ports/available_products_repo.dart' as _i13;
import 'modules/product/domain/ports/product_repo.dart' as _i21;
import 'modules/product/domain/use_cases/fetch_by_category.dart' as _i19;
import 'modules/product/domain/use_cases/fetch_latest.dart' as _i20;
import 'modules/product/infrastrucure/datasources/available_products_datasource.dart'
    as _i11;
import 'modules/product/infrastrucure/datasources/product_datasource.dart'
    as _i18;
import 'modules/product/infrastrucure/repos/available_products_repo_impl.dart'
    as _i14;
import 'modules/product/infrastrucure/repos/product_repo_impl.dart' as _i22;

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
  gh.factory<_i6.LoadByCategoryBloc>(() => _i6.LoadByCategoryBloc());
  gh.factory<_i7.LoadLatestProductsBloc>(() => _i7.LoadLatestProductsBloc());
  gh.factory<_i8.LoginBloc>(() => _i8.LoginBloc());
  gh.lazySingleton<_i9.RestDataSource>(
      () => _i10.DioRestDataSource(get<_i3.ConfigDefinition>()));
  gh.lazySingleton<_i11.AvailableProductsCrudDatasource>(() =>
      _i11.AvailableProductsLoopbackDatasource(get<_i9.RestDataSource>()));
  gh.lazySingleton<_i12.CustomerCrudDatasource>(
      () => _i12.CustomerLoopbackDatasource(get<_i9.RestDataSource>()));
  gh.lazySingleton<_i13.IAvailableProductsRepo>(() =>
      _i14.AvailableProductsRepoImpl(
          get<_i11.AvailableProductsCrudDatasource>()));
  gh.lazySingleton<_i15.ICustomerRepo>(
      () => _i16.CustomerRepoImpl(get<_i12.CustomerCrudDatasource>()));
  gh.lazySingleton<_i17.Login>(() => _i17.Login(get<_i15.ICustomerRepo>()));
  gh.lazySingleton<_i18.ProductCrudDatasource>(
      () => _i18.ProductLoopbackDatasource(get<_i9.RestDataSource>()));
  gh.factory<_i19.FetchByCategory>(
      () => _i19.FetchByCategory(get<_i13.IAvailableProductsRepo>()));
  gh.factory<_i20.FetchLatest>(
      () => _i20.FetchLatest(get<_i13.IAvailableProductsRepo>()));
  gh.lazySingleton<_i21.IProductRepo>(
      () => _i22.ProductRepoImpl(get<_i18.ProductCrudDatasource>()));
  return get;
}
