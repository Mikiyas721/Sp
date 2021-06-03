// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'common/datasource/dio_rest_datasource.dart' as _i9;
import 'common/datasource/rest_datasource/rest_datasource.dart' as _i8;
import 'modules/admin/application/load_admins/load_admins_bloc.dart' as _i3;
import 'modules/admin/application/login/login_bloc.dart' as _i6;
import 'modules/admin/domain/ports/admin_repo.dart' as _i15;
import 'modules/admin/domain/use_cases/create_admin.dart' as _i34;
import 'modules/admin/domain/use_cases/fetch_all_admins.dart' as _i37;
import 'modules/admin/domain/use_cases/fetch_filtered_admins.dart' as _i42;
import 'modules/admin/domain/use_cases/login.dart' as _i25;
import 'modules/admin/domain/use_cases/search_admin.dart' as _i27;
import 'modules/admin/domain/use_cases/update_admin.dart' as _i32;
import 'modules/admin/infrastructure/datasources/admin_datasource.dart' as _i11;
import 'modules/admin/infrastructure/repos/admin_repo_impl.dart' as _i16;
import 'modules/customer/application/load_customers/load_customers_bloc.dart'
    as _i4;
import 'modules/customer/domain/ports/customer_repo.dart' as _i19;
import 'modules/customer/domain/use_cases/fetch_active_customers.dart' as _i36;
import 'modules/customer/domain/use_cases/fetch_all_customers.dart' as _i39;
import 'modules/customer/domain/use_cases/fetch_new_customers.dart' as _i46;
import 'modules/customer/domain/use_cases/search_customer.dart' as _i29;
import 'modules/customer/infrastructure/datasources/customer_datasource.dart'
    as _i13;
import 'modules/customer/infrastructure/repos/customer_repo_impl.dart' as _i20;
import 'modules/employee/application/load_employees/load_employees_bloc.dart'
    as _i5;
import 'modules/employee/application/new_employee/new_employee_bloc.dart'
    as _i7;
import 'modules/employee/domain/ports/employee_repo.dart' as _i21;
import 'modules/employee/domain/use_cases/create_employee.dart' as _i35;
import 'modules/employee/domain/use_cases/fetch_all_employees.dart' as _i40;
import 'modules/employee/domain/use_cases/fetch_filtered_employees.dart'
    as _i43;
import 'modules/employee/domain/use_cases/search_employee.dart' as _i30;
import 'modules/employee/infrastructure/datasources/employee_datasource.dart'
    as _i14;
import 'modules/employee/infrastructure/repos/employee_repo_impl.dart' as _i22;
import 'modules/product/domain/ports/available_products_repo.dart' as _i17;
import 'modules/product/domain/ports/product_repo.dart' as _i48;
import 'modules/product/domain/ports/sold_products_repo.dart' as _i23;
import 'modules/product/domain/use_cases/add_product.dart' as _i33;
import 'modules/product/domain/use_cases/fetch_all_available.dart' as _i38;
import 'modules/product/domain/use_cases/fetch_by_category.dart' as _i41;
import 'modules/product/domain/use_cases/fetch_most_sold.dart' as _i44;
import 'modules/product/domain/use_cases/fetch_near_expiration.dart' as _i45;
import 'modules/product/domain/use_cases/fetch_running_low.dart' as _i47;
import 'modules/product/domain/use_cases/search_available_products.dart'
    as _i28;
import 'modules/product/domain/use_cases/sell_product.dart' as _i31;
import 'modules/product/infrastructure/datasources/available_products_datasource.dart'
    as _i12;
import 'modules/product/infrastructure/datasources/product_datasource.dart'
    as _i26;
import 'modules/product/infrastructure/datasources/sold_datasource_datasource.dart'
    as _i10;
import 'modules/product/infrastructure/repos/available_products_repo_impl.dart'
    as _i18;
import 'modules/product/infrastructure/repos/product_repo_impl.dart' as _i49;
import 'modules/product/infrastructure/repos/sold_products_repo_impl.dart'
    as _i24; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.LoadAdminsBloc>(() => _i3.LoadAdminsBloc());
  gh.factory<_i4.LoadCustomersBloc>(() => _i4.LoadCustomersBloc());
  gh.factory<_i5.LoadEmployeesBloc>(() => _i5.LoadEmployeesBloc());
  gh.factory<_i6.LoginBloc>(() => _i6.LoginBloc());
  gh.factory<_i7.NewEmployeeBloc>(() => _i7.NewEmployeeBloc());
  gh.lazySingleton<_i8.RestDataSource>(() => _i9.DioRestDataSource());
  gh.lazySingleton<_i10.SoldProductCrudDatasource>(
      () => _i10.SoldProductLoopbackDatasource(get<_i8.RestDataSource>()));
  gh.lazySingleton<_i11.AdminCrudDatasource>(
      () => _i11.AdminLoopbackDatasource(get<_i8.RestDataSource>()));
  gh.lazySingleton<_i12.AvailableProductsCrudDatasource>(() =>
      _i12.AvailableProductsLoopbackDatasource(get<_i8.RestDataSource>()));
  gh.lazySingleton<_i13.CustomerCrudDatasource>(
      () => _i13.CustomerLoopbackDatasource(get<_i8.RestDataSource>()));
  gh.lazySingleton<_i14.EmployeeCrudDatasource>(
      () => _i14.EmployeeLoopbackDatasource(get<_i8.RestDataSource>()));
  gh.lazySingleton<_i15.IAdminRepo>(
      () => _i16.AdminRepoImpl(get<_i11.AdminCrudDatasource>()));
  gh.lazySingleton<_i17.IAvailableProductsRepo>(() =>
      _i18.AvailableProductsRepoImpl(
          get<_i12.AvailableProductsCrudDatasource>()));
  gh.lazySingleton<_i19.ICustomerRepo>(
      () => _i20.CustomerRepoImpl(get<_i13.CustomerCrudDatasource>()));
  gh.lazySingleton<_i21.IEmployeeRepo>(
      () => _i22.EmployeeRepoImpl(get<_i14.EmployeeCrudDatasource>()));
  gh.lazySingleton<_i23.ISoldProductsRepo>(
      () => _i24.SoldProductsRepoImpl(get<_i10.SoldProductCrudDatasource>()));
  gh.lazySingleton<_i25.Login>(() => _i25.Login(get<_i15.IAdminRepo>()));
  gh.lazySingleton<_i26.ProductCrudDatasource>(
      () => _i26.ProductLoopbackDatasource(get<_i8.RestDataSource>()));
  gh.lazySingleton<_i27.SearchAdmin>(
      () => _i27.SearchAdmin(get<_i15.IAdminRepo>()));
  gh.factory<_i28.SearchAvailableProducts>(
      () => _i28.SearchAvailableProducts(get<_i17.IAvailableProductsRepo>()));
  gh.lazySingleton<_i29.SearchCustomer>(
      () => _i29.SearchCustomer(get<_i19.ICustomerRepo>()));
  gh.lazySingleton<_i30.SearchEmployee>(
      () => _i30.SearchEmployee(get<_i21.IEmployeeRepo>()));
  gh.lazySingleton<_i31.SellProduct>(
      () => _i31.SellProduct(get<_i17.IAvailableProductsRepo>()));
  gh.lazySingleton<_i32.UpdateAdmin>(
      () => _i32.UpdateAdmin(get<_i15.IAdminRepo>()));
  gh.lazySingleton<_i33.AddProduct>(
      () => _i33.AddProduct(get<_i17.IAvailableProductsRepo>()));
  gh.lazySingleton<_i34.CreateAdmin>(
      () => _i34.CreateAdmin(get<_i15.IAdminRepo>()));
  gh.factory<_i35.CreateEmployee>(
      () => _i35.CreateEmployee(get<_i21.IEmployeeRepo>()));
  gh.lazySingleton<_i36.FetchActiveCustomers>(
      () => _i36.FetchActiveCustomers(get<_i19.ICustomerRepo>()));
  gh.lazySingleton<_i37.FetchAllAdmins>(
      () => _i37.FetchAllAdmins(get<_i15.IAdminRepo>()));
  gh.factory<_i38.FetchAllAvailable>(
      () => _i38.FetchAllAvailable(get<_i17.IAvailableProductsRepo>()));
  gh.factory<_i39.FetchAllCustomers>(
      () => _i39.FetchAllCustomers(get<_i19.ICustomerRepo>()));
  gh.lazySingleton<_i40.FetchAllEmployees>(
      () => _i40.FetchAllEmployees(get<_i21.IEmployeeRepo>()));
  gh.lazySingleton<_i41.FetchByCategory>(
      () => _i41.FetchByCategory(get<_i17.IAvailableProductsRepo>()));
  gh.lazySingleton<_i42.FetchFilteredAdmins>(
      () => _i42.FetchFilteredAdmins(get<_i15.IAdminRepo>()));
  gh.lazySingleton<_i43.FetchFilteredEmployees>(
      () => _i43.FetchFilteredEmployees(get<_i21.IEmployeeRepo>()));
  gh.factory<_i44.FetchMostSold>(
      () => _i44.FetchMostSold(get<_i23.ISoldProductsRepo>()));
  gh.factory<_i45.FetchNearExpiration>(
      () => _i45.FetchNearExpiration(get<_i17.IAvailableProductsRepo>()));
  gh.lazySingleton<_i46.FetchNewCustomers>(
      () => _i46.FetchNewCustomers(get<_i19.ICustomerRepo>()));
  gh.factory<_i47.FetchRunningLow>(
      () => _i47.FetchRunningLow(get<_i17.IAvailableProductsRepo>()));
  gh.lazySingleton<_i48.IProductRepo>(
      () => _i49.ProductRepoImpl(get<_i26.ProductCrudDatasource>()));
  return get;
}
