// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'common/datasource/dio_rest_datasource.dart' as _i18;
import 'common/datasource/rest_datasource/rest_datasource.dart' as _i17;
import 'modules/admin/application/login/login_bloc.dart' as _i15;
import 'modules/admin/domain/ports/admin_repo.dart' as _i21;
import 'modules/admin/domain/use_cases/create_admin.dart' as _i26;
import 'modules/admin/domain/use_cases/fetch_all_admins.dart' as _i27;
import 'modules/admin/domain/use_cases/fetch_filtered_admins.dart' as _i28;
import 'modules/admin/domain/use_cases/login.dart' as _i23;
import 'modules/admin/domain/use_cases/search_admin.dart' as _i24;
import 'modules/admin/domain/use_cases/update_admin.dart' as _i25;
import 'modules/admin/infrastructure/datasources/admin_datasource.dart' as _i20;
import 'modules/admin/infrastructure/repos/admin_repo_impl.dart' as _i22;
import 'modules/employee/application/load_employees/load_employees_bloc.dart'
    as _i14;
import 'modules/employee/application/new_employee/new_employee_bloc.dart'
    as _i16;
import 'modules/employee/domain/ports/employee_repo.dart' as _i6;
import 'modules/employee/domain/use_cases/create_employee.dart' as _i5;
import 'modules/product/domain/ports/available_products_repo.dart' as _i8;
import 'modules/product/domain/ports/product_repo.dart' as _i4;
import 'modules/product/domain/ports/sold_products_repo.dart' as _i11;
import 'modules/product/domain/use_cases/add_product.dart' as _i3;
import 'modules/product/domain/use_cases/fetch_all_available.dart' as _i7;
import 'modules/product/domain/use_cases/fetch_by_category.dart' as _i9;
import 'modules/product/domain/use_cases/fetch_most_sold.dart' as _i10;
import 'modules/product/domain/use_cases/fetch_near_expiration.dart' as _i12;
import 'modules/product/domain/use_cases/fetch_running_low.dart' as _i13;
import 'modules/product/domain/use_cases/search_product.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AddProduct>(
      () => _i3.AddProduct(get<_i4.IProductRepo>()));
  gh.factory<_i5.CreateEmployee>(
      () => _i5.CreateEmployee(get<_i6.IEmployeeRepo>()));
  gh.factory<_i7.FetchAllAvailable>(
      () => _i7.FetchAllAvailable(get<_i8.IAvailableProductsRepo>()));
  gh.lazySingleton<_i9.FetchByCategory>(
      () => _i9.FetchByCategory(get<_i8.IAvailableProductsRepo>()));
  gh.factory<_i10.FetchMostSold>(
      () => _i10.FetchMostSold(get<_i11.ISoldProductsRepo>()));
  gh.factory<_i12.FetchNearExpiration>(
      () => _i12.FetchNearExpiration(get<_i8.IAvailableProductsRepo>()));
  gh.factory<_i13.FetchRunningLow>(
      () => _i13.FetchRunningLow(get<_i8.IAvailableProductsRepo>()));
  gh.factory<_i14.LoadEmployeesBloc>(() => _i14.LoadEmployeesBloc());
  gh.factory<_i15.LoginBloc>(() => _i15.LoginBloc());
  gh.factory<_i16.NewEmployeeBloc>(() => _i16.NewEmployeeBloc());
  gh.lazySingleton<_i17.RestDataSource>(() => _i18.DioRestDataSource());
  gh.factory<_i19.SearchProduct>(
      () => _i19.SearchProduct(get<_i4.IProductRepo>()));
  gh.lazySingleton<_i20.AdminCrudDatasource>(
      () => _i20.AdminLoopbackDatasource(get<_i17.RestDataSource>()));
  gh.lazySingleton<_i21.IAdminRepo>(
      () => _i22.AdminRepoImpl(get<_i20.AdminCrudDatasource>()));
  gh.lazySingleton<_i23.Login>(() => _i23.Login(get<_i21.IAdminRepo>()));
  gh.lazySingleton<_i24.SearchAdmin>(
      () => _i24.SearchAdmin(get<_i21.IAdminRepo>()));
  gh.lazySingleton<_i25.UpdateAdmin>(
      () => _i25.UpdateAdmin(get<_i21.IAdminRepo>()));
  gh.lazySingleton<_i26.CreateAdmin>(
      () => _i26.CreateAdmin(get<_i21.IAdminRepo>()));
  gh.lazySingleton<_i27.FetchAllAdmins>(
      () => _i27.FetchAllAdmins(get<_i21.IAdminRepo>()));
  gh.lazySingleton<_i28.FetchFilteredAdmins>(
      () => _i28.FetchFilteredAdmins(get<_i21.IAdminRepo>()));
  return get;
}
