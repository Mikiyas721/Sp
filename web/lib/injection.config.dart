// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'common/datasource/dio_rest_datasource.dart' as _i26;
import 'common/datasource/rest_datasource/rest_datasource.dart' as _i25;
import 'modules/admin/application/load_admins/load_admins_bloc.dart' as _i20;
import 'modules/admin/application/login/login_bloc.dart' as _i23;
import 'modules/admin/domain/ports/admin_repo.dart' as _i31;
import 'modules/admin/domain/use_cases/create_admin.dart' as _i36;
import 'modules/admin/domain/use_cases/fetch_all_admins.dart' as _i37;
import 'modules/admin/domain/use_cases/fetch_filtered_admins.dart' as _i38;
import 'modules/admin/domain/use_cases/login.dart' as _i33;
import 'modules/admin/domain/use_cases/search_admin.dart' as _i34;
import 'modules/admin/domain/use_cases/update_admin.dart' as _i35;
import 'modules/admin/infrastructure/datasources/admin_datasource.dart' as _i30;
import 'modules/admin/infrastructure/repos/admin_repo_impl.dart' as _i32;
import 'modules/customer/application/load_customers/load_customers_bloc.dart'
    as _i21;
import 'modules/customer/domain/ports/customer_repo.dart' as _i8;
import 'modules/customer/domain/use_cases/fetch_active_customers.dart' as _i7;
import 'modules/customer/domain/use_cases/fetch_all_customers.dart' as _i11;
import 'modules/customer/domain/use_cases/fetch_new_customers.dart' as _i18;
import 'modules/customer/domain/use_cases/search_customer.dart' as _i27;
import 'modules/employee/application/load_employees/load_employees_bloc.dart'
    as _i22;
import 'modules/employee/application/new_employee/new_employee_bloc.dart'
    as _i24;
import 'modules/employee/domain/ports/employee_repo.dart' as _i6;
import 'modules/employee/domain/use_cases/create_employee.dart' as _i5;
import 'modules/employee/domain/use_cases/fetch_all_employees.dart' as _i12;
import 'modules/employee/domain/use_cases/fetch_filtered_employees.dart'
    as _i14;
import 'modules/employee/domain/use_cases/search_employee.dart' as _i28;
import 'modules/product/domain/ports/available_products_repo.dart' as _i10;
import 'modules/product/domain/ports/product_repo.dart' as _i4;
import 'modules/product/domain/ports/sold_products_repo.dart' as _i16;
import 'modules/product/domain/use_cases/add_product.dart' as _i3;
import 'modules/product/domain/use_cases/fetch_all_available.dart' as _i9;
import 'modules/product/domain/use_cases/fetch_by_category.dart' as _i13;
import 'modules/product/domain/use_cases/fetch_most_sold.dart' as _i15;
import 'modules/product/domain/use_cases/fetch_near_expiration.dart' as _i17;
import 'modules/product/domain/use_cases/fetch_running_low.dart' as _i19;
import 'modules/product/domain/use_cases/search_product.dart'
    as _i29; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AddProduct>(
      () => _i3.AddProduct(get<_i4.IProductRepo>()));
  gh.factory<_i5.CreateEmployee>(
      () => _i5.CreateEmployee(get<_i6.IEmployeeRepo>()));
  gh.lazySingleton<_i7.FetchActiveCustomers>(
      () => _i7.FetchActiveCustomers(get<_i8.ICustomerRepo>()));
  gh.factory<_i9.FetchAllAvailable>(
      () => _i9.FetchAllAvailable(get<_i10.IAvailableProductsRepo>()));
  gh.factory<_i11.FetchAllCustomers>(
      () => _i11.FetchAllCustomers(get<_i8.ICustomerRepo>()));
  gh.lazySingleton<_i12.FetchAllEmployees>(
      () => _i12.FetchAllEmployees(get<_i6.IEmployeeRepo>()));
  gh.lazySingleton<_i13.FetchByCategory>(
      () => _i13.FetchByCategory(get<_i10.IAvailableProductsRepo>()));
  gh.lazySingleton<_i14.FetchFilteredEmployees>(
      () => _i14.FetchFilteredEmployees(get<_i6.IEmployeeRepo>()));
  gh.factory<_i15.FetchMostSold>(
      () => _i15.FetchMostSold(get<_i16.ISoldProductsRepo>()));
  gh.factory<_i17.FetchNearExpiration>(
      () => _i17.FetchNearExpiration(get<_i10.IAvailableProductsRepo>()));
  gh.lazySingleton<_i18.FetchNewCustomers>(
      () => _i18.FetchNewCustomers(get<_i8.ICustomerRepo>()));
  gh.factory<_i19.FetchRunningLow>(
      () => _i19.FetchRunningLow(get<_i10.IAvailableProductsRepo>()));
  gh.factory<_i20.LoadAdminsBloc>(() => _i20.LoadAdminsBloc());
  gh.factory<_i21.LoadCustomersBloc>(() => _i21.LoadCustomersBloc());
  gh.factory<_i22.LoadEmployeesBloc>(() => _i22.LoadEmployeesBloc());
  gh.factory<_i23.LoginBloc>(() => _i23.LoginBloc());
  gh.factory<_i24.NewEmployeeBloc>(() => _i24.NewEmployeeBloc());
  gh.lazySingleton<_i25.RestDataSource>(() => _i26.DioRestDataSource());
  gh.lazySingleton<_i27.SearchCustomer>(
      () => _i27.SearchCustomer(get<_i8.ICustomerRepo>()));
  gh.lazySingleton<_i28.SearchEmployee>(
      () => _i28.SearchEmployee(get<_i6.IEmployeeRepo>()));
  gh.factory<_i29.SearchProduct>(
      () => _i29.SearchProduct(get<_i4.IProductRepo>()));
  gh.lazySingleton<_i30.AdminCrudDatasource>(
      () => _i30.AdminLoopbackDatasource(get<_i25.RestDataSource>()));
  gh.lazySingleton<_i31.IAdminRepo>(
      () => _i32.AdminRepoImpl(get<_i30.AdminCrudDatasource>()));
  gh.lazySingleton<_i33.Login>(() => _i33.Login(get<_i31.IAdminRepo>()));
  gh.lazySingleton<_i34.SearchAdmin>(
      () => _i34.SearchAdmin(get<_i31.IAdminRepo>()));
  gh.lazySingleton<_i35.UpdateAdmin>(
      () => _i35.UpdateAdmin(get<_i31.IAdminRepo>()));
  gh.lazySingleton<_i36.CreateAdmin>(
      () => _i36.CreateAdmin(get<_i31.IAdminRepo>()));
  gh.lazySingleton<_i37.FetchAllAdmins>(
      () => _i37.FetchAllAdmins(get<_i31.IAdminRepo>()));
  gh.lazySingleton<_i38.FetchFilteredAdmins>(
      () => _i38.FetchFilteredAdmins(get<_i31.IAdminRepo>()));
  return get;
}
