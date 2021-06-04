// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'common/datasource/dio_rest_datasource.dart' as _i11;
import 'common/datasource/rest_datasource/rest_datasource.dart' as _i10;
import 'modules/admin/application/load_admins/load_admins_bloc.dart' as _i4;
import 'modules/admin/application/login/login_bloc.dart' as _i8;
import 'modules/admin/domain/ports/admin_repo.dart' as _i17;
import 'modules/admin/domain/use_cases/create_admin.dart' as _i36;
import 'modules/admin/domain/use_cases/fetch_all_admins.dart' as _i39;
import 'modules/admin/domain/use_cases/fetch_filtered_admins.dart' as _i44;
import 'modules/admin/domain/use_cases/login.dart' as _i27;
import 'modules/admin/domain/use_cases/search_admin.dart' as _i29;
import 'modules/admin/domain/use_cases/update_admin.dart' as _i34;
import 'modules/admin/infrastructure/datasources/admin_datasource.dart' as _i13;
import 'modules/admin/infrastructure/repos/admin_repo_impl.dart' as _i18;
import 'modules/customer/application/load_customers/load_customers_bloc.dart'
    as _i5;
import 'modules/customer/domain/ports/customer_repo.dart' as _i21;
import 'modules/customer/domain/use_cases/fetch_active_customers.dart' as _i38;
import 'modules/customer/domain/use_cases/fetch_all_customers.dart' as _i41;
import 'modules/customer/domain/use_cases/fetch_new_customers.dart' as _i48;
import 'modules/customer/domain/use_cases/search_customer.dart' as _i31;
import 'modules/customer/infrastructure/datasources/customer_datasource.dart'
    as _i15;
import 'modules/customer/infrastructure/repos/customer_repo_impl.dart' as _i22;
import 'modules/employee/application/load_employees/load_employees_bloc.dart'
    as _i6;
import 'modules/employee/application/new_employee/new_employee_bloc.dart'
    as _i9;
import 'modules/employee/domain/ports/employee_repo.dart' as _i23;
import 'modules/employee/domain/use_cases/create_employee.dart' as _i37;
import 'modules/employee/domain/use_cases/fetch_all_employees.dart' as _i42;
import 'modules/employee/domain/use_cases/fetch_filtered_employees.dart'
    as _i45;
import 'modules/employee/domain/use_cases/search_employee.dart' as _i32;
import 'modules/employee/infrastructure/datasources/employee_datasource.dart'
    as _i16;
import 'modules/employee/infrastructure/repos/employee_repo_impl.dart' as _i24;
import 'modules/product/application/add_product/add_product_bloc.dart' as _i3;
import 'modules/product/application/load_products/load_products_bloc.dart'
    as _i7;
import 'modules/product/domain/ports/available_products_repo.dart' as _i19;
import 'modules/product/domain/ports/product_repo.dart' as _i50;
import 'modules/product/domain/ports/sold_products_repo.dart' as _i25;
import 'modules/product/domain/use_cases/add_product.dart' as _i35;
import 'modules/product/domain/use_cases/fetch_all_available.dart' as _i40;
import 'modules/product/domain/use_cases/fetch_by_category.dart' as _i43;
import 'modules/product/domain/use_cases/fetch_most_sold.dart' as _i46;
import 'modules/product/domain/use_cases/fetch_near_expiration.dart' as _i47;
import 'modules/product/domain/use_cases/fetch_running_low.dart' as _i49;
import 'modules/product/domain/use_cases/search_available_products.dart'
    as _i30;
import 'modules/product/domain/use_cases/sell_product.dart' as _i33;
import 'modules/product/infrastructure/datasources/available_products_datasource.dart'
    as _i14;
import 'modules/product/infrastructure/datasources/product_datasource.dart'
    as _i28;
import 'modules/product/infrastructure/datasources/sold_datasource_datasource.dart'
    as _i12;
import 'modules/product/infrastructure/repos/available_products_repo_impl.dart'
    as _i20;
import 'modules/product/infrastructure/repos/product_repo_impl.dart' as _i51;
import 'modules/product/infrastructure/repos/sold_products_repo_impl.dart'
    as _i26; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AddProductBloc>(() => _i3.AddProductBloc());
  gh.factory<_i4.LoadAdminsBloc>(() => _i4.LoadAdminsBloc());
  gh.factory<_i5.LoadCustomersBloc>(() => _i5.LoadCustomersBloc());
  gh.factory<_i6.LoadEmployeesBloc>(() => _i6.LoadEmployeesBloc());
  gh.factory<_i7.LoadProductsBloc>(() => _i7.LoadProductsBloc());
  gh.factory<_i8.LoginBloc>(() => _i8.LoginBloc());
  gh.factory<_i9.NewEmployeeBloc>(() => _i9.NewEmployeeBloc());
  gh.lazySingleton<_i10.RestDataSource>(() => _i11.DioRestDataSource());
  gh.lazySingleton<_i12.SoldProductCrudDatasource>(
      () => _i12.SoldProductLoopbackDatasource(get<_i10.RestDataSource>()));
  gh.lazySingleton<_i13.AdminCrudDatasource>(
      () => _i13.AdminLoopbackDatasource(get<_i10.RestDataSource>()));
  gh.lazySingleton<_i14.AvailableProductsCrudDatasource>(() =>
      _i14.AvailableProductsLoopbackDatasource(get<_i10.RestDataSource>()));
  gh.lazySingleton<_i15.CustomerCrudDatasource>(
      () => _i15.CustomerLoopbackDatasource(get<_i10.RestDataSource>()));
  gh.lazySingleton<_i16.EmployeeCrudDatasource>(
      () => _i16.EmployeeLoopbackDatasource(get<_i10.RestDataSource>()));
  gh.lazySingleton<_i17.IAdminRepo>(
      () => _i18.AdminRepoImpl(get<_i13.AdminCrudDatasource>()));
  gh.lazySingleton<_i19.IAvailableProductsRepo>(() =>
      _i20.AvailableProductsRepoImpl(
          get<_i14.AvailableProductsCrudDatasource>()));
  gh.lazySingleton<_i21.ICustomerRepo>(
      () => _i22.CustomerRepoImpl(get<_i15.CustomerCrudDatasource>()));
  gh.lazySingleton<_i23.IEmployeeRepo>(
      () => _i24.EmployeeRepoImpl(get<_i16.EmployeeCrudDatasource>()));
  gh.lazySingleton<_i25.ISoldProductsRepo>(
      () => _i26.SoldProductsRepoImpl(get<_i12.SoldProductCrudDatasource>()));
  gh.lazySingleton<_i27.Login>(() => _i27.Login(get<_i17.IAdminRepo>()));
  gh.lazySingleton<_i28.ProductCrudDatasource>(
      () => _i28.ProductLoopbackDatasource(get<_i10.RestDataSource>()));
  gh.lazySingleton<_i29.SearchAdmin>(
      () => _i29.SearchAdmin(get<_i17.IAdminRepo>()));
  gh.factory<_i30.SearchAvailableProducts>(
      () => _i30.SearchAvailableProducts(get<_i19.IAvailableProductsRepo>()));
  gh.lazySingleton<_i31.SearchCustomer>(
      () => _i31.SearchCustomer(get<_i21.ICustomerRepo>()));
  gh.lazySingleton<_i32.SearchEmployee>(
      () => _i32.SearchEmployee(get<_i23.IEmployeeRepo>()));
  gh.lazySingleton<_i33.SellProduct>(
      () => _i33.SellProduct(get<_i19.IAvailableProductsRepo>()));
  gh.lazySingleton<_i34.UpdateAdmin>(
      () => _i34.UpdateAdmin(get<_i17.IAdminRepo>()));
  gh.lazySingleton<_i35.AddProduct>(
      () => _i35.AddProduct(get<_i19.IAvailableProductsRepo>()));
  gh.lazySingleton<_i36.CreateAdmin>(
      () => _i36.CreateAdmin(get<_i17.IAdminRepo>()));
  gh.factory<_i37.CreateEmployee>(
      () => _i37.CreateEmployee(get<_i23.IEmployeeRepo>()));
  gh.lazySingleton<_i38.FetchActiveCustomers>(
      () => _i38.FetchActiveCustomers(get<_i21.ICustomerRepo>()));
  gh.lazySingleton<_i39.FetchAllAdmins>(
      () => _i39.FetchAllAdmins(get<_i17.IAdminRepo>()));
  gh.factory<_i40.FetchAllAvailable>(
      () => _i40.FetchAllAvailable(get<_i19.IAvailableProductsRepo>()));
  gh.factory<_i41.FetchAllCustomers>(
      () => _i41.FetchAllCustomers(get<_i21.ICustomerRepo>()));
  gh.lazySingleton<_i42.FetchAllEmployees>(
      () => _i42.FetchAllEmployees(get<_i23.IEmployeeRepo>()));
  gh.lazySingleton<_i43.FetchByCategory>(
      () => _i43.FetchByCategory(get<_i19.IAvailableProductsRepo>()));
  gh.lazySingleton<_i44.FetchFilteredAdmins>(
      () => _i44.FetchFilteredAdmins(get<_i17.IAdminRepo>()));
  gh.lazySingleton<_i45.FetchFilteredEmployees>(
      () => _i45.FetchFilteredEmployees(get<_i23.IEmployeeRepo>()));
  gh.factory<_i46.FetchMostSold>(
      () => _i46.FetchMostSold(get<_i25.ISoldProductsRepo>()));
  gh.factory<_i47.FetchNearExpiration>(
      () => _i47.FetchNearExpiration(get<_i19.IAvailableProductsRepo>()));
  gh.lazySingleton<_i48.FetchNewCustomers>(
      () => _i48.FetchNewCustomers(get<_i21.ICustomerRepo>()));
  gh.factory<_i49.FetchRunningLow>(
      () => _i49.FetchRunningLow(get<_i19.IAvailableProductsRepo>()));
  gh.lazySingleton<_i50.IProductRepo>(
      () => _i51.ProductRepoImpl(get<_i28.ProductCrudDatasource>()));
  return get;
}
