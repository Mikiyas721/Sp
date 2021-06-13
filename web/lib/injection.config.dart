// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'common/datasource/dio_rest_datasource.dart' as _i14;
import 'common/datasource/rest_datasource/rest_datasource.dart' as _i13;
import 'config/config.definition.dart' as _i4;
import 'config/development_ip.config.dart' as _i5;
import 'config/development_local.config.dart' as _i6;
import 'modules/admin/application/load_admins/load_admins_bloc.dart' as _i7;
import 'modules/admin/application/login/login_bloc.dart' as _i11;
import 'modules/admin/domain/ports/admin_repo.dart' as _i20;
import 'modules/admin/domain/use_cases/create_admin.dart' as _i39;
import 'modules/admin/domain/use_cases/fetch_all_admins.dart' as _i42;
import 'modules/admin/domain/use_cases/fetch_filtered_admins.dart' as _i47;
import 'modules/admin/domain/use_cases/login.dart' as _i30;
import 'modules/admin/domain/use_cases/search_admin.dart' as _i32;
import 'modules/admin/domain/use_cases/update_admin.dart' as _i37;
import 'modules/admin/infrastructure/datasources/admin_datasource.dart' as _i16;
import 'modules/admin/infrastructure/repos/admin_repo_impl.dart' as _i21;
import 'modules/customer/application/load_customers/load_customers_bloc.dart'
    as _i8;
import 'modules/customer/domain/ports/customer_repo.dart' as _i24;
import 'modules/customer/domain/use_cases/fetch_active_customers.dart' as _i41;
import 'modules/customer/domain/use_cases/fetch_all_customers.dart' as _i44;
import 'modules/customer/domain/use_cases/fetch_new_customers.dart' as _i51;
import 'modules/customer/domain/use_cases/search_customer.dart' as _i34;
import 'modules/customer/infrastructure/datasources/customer_datasource.dart'
    as _i18;
import 'modules/customer/infrastructure/repos/customer_repo_impl.dart' as _i25;
import 'modules/employee/application/load_employees/load_employees_bloc.dart'
    as _i9;
import 'modules/employee/application/new_employee/new_employee_bloc.dart'
    as _i12;
import 'modules/employee/domain/ports/employee_repo.dart' as _i26;
import 'modules/employee/domain/use_cases/create_employee.dart' as _i40;
import 'modules/employee/domain/use_cases/fetch_all_employees.dart' as _i45;
import 'modules/employee/domain/use_cases/fetch_filtered_employees.dart'
    as _i48;
import 'modules/employee/domain/use_cases/search_employee.dart' as _i35;
import 'modules/employee/infrastructure/datasources/employee_datasource.dart'
    as _i19;
import 'modules/employee/infrastructure/repos/employee_repo_impl.dart' as _i27;
import 'modules/product/application/add_product/add_product_bloc.dart' as _i3;
import 'modules/product/application/load_products/load_products_bloc.dart'
    as _i10;
import 'modules/product/domain/ports/available_products_repo.dart' as _i22;
import 'modules/product/domain/ports/product_repo.dart' as _i53;
import 'modules/product/domain/ports/sold_products_repo.dart' as _i28;
import 'modules/product/domain/use_cases/add_product.dart' as _i38;
import 'modules/product/domain/use_cases/fetch_all_available.dart' as _i43;
import 'modules/product/domain/use_cases/fetch_by_category.dart' as _i46;
import 'modules/product/domain/use_cases/fetch_most_sold.dart' as _i49;
import 'modules/product/domain/use_cases/fetch_near_expiration.dart' as _i50;
import 'modules/product/domain/use_cases/fetch_running_low.dart' as _i52;
import 'modules/product/domain/use_cases/search_available_products.dart'
    as _i33;
import 'modules/product/domain/use_cases/sell_product.dart' as _i36;
import 'modules/product/infrastructure/datasources/available_products_datasource.dart'
    as _i17;
import 'modules/product/infrastructure/datasources/product_datasource.dart'
    as _i31;
import 'modules/product/infrastructure/datasources/sold_datasource_datasource.dart'
    as _i15;
import 'modules/product/infrastructure/repos/available_products_repo_impl.dart'
    as _i23;
import 'modules/product/infrastructure/repos/product_repo_impl.dart' as _i54;
import 'modules/product/infrastructure/repos/sold_products_repo_impl.dart'
    as _i29;

const String _development_ip = 'development_ip';
const String _development_local = 'development_local';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AddProductBloc>(() => _i3.AddProductBloc());
  gh.lazySingleton<_i4.ConfigDefinition>(
      () => _i5.DevelopmentConfigDefinition(),
      registerFor: {_development_ip});
  gh.lazySingleton<_i4.ConfigDefinition>(
      () => _i6.DevelopmentConfigDefinition(),
      registerFor: {_development_local});
  gh.factory<_i7.LoadAdminsBloc>(() => _i7.LoadAdminsBloc());
  gh.factory<_i8.LoadCustomersBloc>(() => _i8.LoadCustomersBloc());
  gh.factory<_i9.LoadEmployeesBloc>(() => _i9.LoadEmployeesBloc());
  gh.factory<_i10.LoadProductsBloc>(() => _i10.LoadProductsBloc());
  gh.factory<_i11.LoginBloc>(() => _i11.LoginBloc());
  gh.factory<_i12.NewEmployeeBloc>(() => _i12.NewEmployeeBloc());
  gh.lazySingleton<_i13.RestDataSource>(
      () => _i14.DioRestDataSource(get<_i4.ConfigDefinition>()));
  gh.lazySingleton<_i15.SoldProductCrudDatasource>(
      () => _i15.SoldProductLoopbackDatasource(get<_i13.RestDataSource>()));
  gh.lazySingleton<_i16.AdminCrudDatasource>(
      () => _i16.AdminLoopbackDatasource(get<_i13.RestDataSource>()));
  gh.lazySingleton<_i17.AvailableProductsCrudDatasource>(() =>
      _i17.AvailableProductsLoopbackDatasource(get<_i13.RestDataSource>()));
  gh.lazySingleton<_i18.CustomerCrudDatasource>(
      () => _i18.CustomerLoopbackDatasource(get<_i13.RestDataSource>()));
  gh.lazySingleton<_i19.EmployeeCrudDatasource>(
      () => _i19.EmployeeLoopbackDatasource(get<_i13.RestDataSource>()));
  gh.lazySingleton<_i20.IAdminRepo>(
      () => _i21.AdminRepoImpl(get<_i16.AdminCrudDatasource>()));
  gh.lazySingleton<_i22.IAvailableProductsRepo>(() =>
      _i23.AvailableProductsRepoImpl(
          get<_i17.AvailableProductsCrudDatasource>()));
  gh.lazySingleton<_i24.ICustomerRepo>(
      () => _i25.CustomerRepoImpl(get<_i18.CustomerCrudDatasource>()));
  gh.lazySingleton<_i26.IEmployeeRepo>(
      () => _i27.EmployeeRepoImpl(get<_i19.EmployeeCrudDatasource>()));
  gh.lazySingleton<_i28.ISoldProductsRepo>(
      () => _i29.SoldProductsRepoImpl(get<_i15.SoldProductCrudDatasource>()));
  gh.lazySingleton<_i30.Login>(() => _i30.Login(get<_i20.IAdminRepo>()));
  gh.lazySingleton<_i31.ProductCrudDatasource>(
      () => _i31.ProductLoopbackDatasource(get<_i13.RestDataSource>()));
  gh.lazySingleton<_i32.SearchAdmin>(
      () => _i32.SearchAdmin(get<_i20.IAdminRepo>()));
  gh.factory<_i33.SearchAvailableProducts>(
      () => _i33.SearchAvailableProducts(get<_i22.IAvailableProductsRepo>()));
  gh.lazySingleton<_i34.SearchCustomer>(
      () => _i34.SearchCustomer(get<_i24.ICustomerRepo>()));
  gh.lazySingleton<_i35.SearchEmployee>(
      () => _i35.SearchEmployee(get<_i26.IEmployeeRepo>()));
  gh.lazySingleton<_i36.SellProduct>(
      () => _i36.SellProduct(get<_i22.IAvailableProductsRepo>()));
  gh.lazySingleton<_i37.UpdateAdmin>(
      () => _i37.UpdateAdmin(get<_i20.IAdminRepo>()));
  gh.lazySingleton<_i38.AddProduct>(
      () => _i38.AddProduct(get<_i22.IAvailableProductsRepo>()));
  gh.lazySingleton<_i39.CreateAdmin>(
      () => _i39.CreateAdmin(get<_i20.IAdminRepo>()));
  gh.factory<_i40.CreateEmployee>(
      () => _i40.CreateEmployee(get<_i26.IEmployeeRepo>()));
  gh.lazySingleton<_i41.FetchActiveCustomers>(
      () => _i41.FetchActiveCustomers(get<_i24.ICustomerRepo>()));
  gh.lazySingleton<_i42.FetchAllAdmins>(
      () => _i42.FetchAllAdmins(get<_i20.IAdminRepo>()));
  gh.factory<_i43.FetchAllAvailable>(
      () => _i43.FetchAllAvailable(get<_i22.IAvailableProductsRepo>()));
  gh.factory<_i44.FetchAllCustomers>(
      () => _i44.FetchAllCustomers(get<_i24.ICustomerRepo>()));
  gh.lazySingleton<_i45.FetchAllEmployees>(
      () => _i45.FetchAllEmployees(get<_i26.IEmployeeRepo>()));
  gh.lazySingleton<_i46.FetchByCategory>(
      () => _i46.FetchByCategory(get<_i22.IAvailableProductsRepo>()));
  gh.lazySingleton<_i47.FetchFilteredAdmins>(
      () => _i47.FetchFilteredAdmins(get<_i20.IAdminRepo>()));
  gh.lazySingleton<_i48.FetchFilteredEmployees>(
      () => _i48.FetchFilteredEmployees(get<_i26.IEmployeeRepo>()));
  gh.factory<_i49.FetchMostSold>(
      () => _i49.FetchMostSold(get<_i28.ISoldProductsRepo>()));
  gh.factory<_i50.FetchNearExpiration>(
      () => _i50.FetchNearExpiration(get<_i22.IAvailableProductsRepo>()));
  gh.lazySingleton<_i51.FetchNewCustomers>(
      () => _i51.FetchNewCustomers(get<_i24.ICustomerRepo>()));
  gh.factory<_i52.FetchRunningLow>(
      () => _i52.FetchRunningLow(get<_i22.IAvailableProductsRepo>()));
  gh.lazySingleton<_i53.IProductRepo>(
      () => _i54.ProductRepoImpl(get<_i31.ProductCrudDatasource>()));
  return get;
}
