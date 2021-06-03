import 'package:flutter/cupertino.dart';
import 'package:sp_web/common/controller/controller.dart';
import 'package:sp_web/common/debouncer.dart';
import 'package:sp_web/common/mixins/date_time_mixin.dart';
import 'package:sp_web/common/mixins/toast_mixin.dart';
import 'package:sp_web/injection.dart';
import 'package:sp_web/modules/employee/domain/use_cases/fetch_all_employees.dart';
import 'package:sp_web/modules/employee/domain/use_cases/fetch_filtered_employees.dart';
import 'package:sp_web/modules/employee/domain/use_cases/search_employee.dart';
import 'package:sp_web/modules/employee/presentation/models/employees_view_model.dart';

import '../../application/load_employees/load_employees_bloc.dart';
import '../../../../common/extensions.dart';

class LoadEmployeesController extends BlocViewModelController<
    LoadEmployeesBloc,
    LoadEmployeesEvent,
    LoadEmployeesState,
    EmployeesViewModel> with ToastMixin, DateTimeMixin {
  final BuildContext context;

  LoadEmployeesController(this.context)
      : super(getIt.get<LoadEmployeesBloc>(), true);

  @override
  EmployeesViewModel mapStateToViewModel(LoadEmployeesState s) {
    return EmployeesViewModel(
      error: s.loadFailure.getOrElse(() => null)?.message,
      data: s.employees
          .map<EmployeeViewModel>((e) => EmployeeViewModel(
                id: e.id,
                firstName: e.firstName.name,
                lastName: e.lastName.name,
                phoneNumber: e.phoneNumber.phoneNumber,
                email: e.email.email,
                employeePosition:
                    e.employeePosition.getString().getOrElse(() => null),
                salary: e.salary.salary.toString(),
                employeeType: e.employeeType.getString().getOrElse(() => null),
                photoUrl: e.photoUrl.imageUrl,
                docUrl: e.docUrl.imageUrl,
                createdAt: getShortDateString(e.createdAt),
                updatedAt: getShortDateString(e.updatedAt),
              ))
          .toList(),
      isLoading: s.isLoading,
      listFilter: s.filterString,
      searchFilter: s.searchFilterString,
      searchText: s.searchString,
      isPerformingQuery: s.isFiltering,
    );
  }

  void loadInitial() async {
    bloc.add(LoadEmployeesIsLoadingEvent());
    final response = await getIt.get<FetchAllEmployees>().execute();
    response.fold((l) {
      bloc.add(LoadEmployeesFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(LoadEmployeesSucceededEvent(r));
    });
  }

  void onFilterChanged(String filter) async {
    bloc.add(LoadEmployeesFilterChangedEvent(filter));
    final response = await getIt
        .get<FetchFilteredEmployees>()
        .execute(bloc.state.filterString);
    response.fold((l) {
      bloc.add(LoadEmployeesFilterFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(LoadEmployeesFilterSucceededEvent(r));
    });
  }

  void onSearchFilterChanged(String filter) {
    bloc.add(LoadEmployeesSearchFilterChangedEvent(filter));
  }

  void onSearch(String text) {
    bloc.add(LoadEmployeesSearchTextChanged(text));
    DeBouncer().run(() async {
      final response = await getIt
          .get<SearchEmployee>()
          .execute(bloc.state.searchFilterString, text);
      response.fold((l) {
        bloc.add(LoadEmployeesFilterFailedEvent(l));
        toastError(l.message);
      }, (r) {
        bloc.add(LoadEmployeesFilterSucceededEvent(r));
      });
    });
  }

  void onAdd(EmployeeViewModel employeeViewModel) {}

  void onDelete(EmployeeViewModel employeeViewModel) {}

  void onEdit(EmployeeViewModel employeeViewModel) {}

  void onOpen(EmployeeViewModel employeeViewModel) {}
}
