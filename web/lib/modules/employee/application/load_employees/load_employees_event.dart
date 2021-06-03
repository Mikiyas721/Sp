part of 'load_employees_bloc.dart';

abstract class LoadEmployeesEvent extends BlocEvent<LoadEmployeesState> {}

class LoadEmployeesIsLoadingEvent extends LoadEmployeesEvent {
  @override
  Stream<LoadEmployeesState> handle(LoadEmployeesState currentState) async* {
    yield currentState.copyWith(
      isLoading: true,
    );
  }
}

class LoadEmployeesFailedEvent extends LoadEmployeesEvent {
  final Failure loadFailure;

  LoadEmployeesFailedEvent(this.loadFailure);

  @override
  Stream<LoadEmployeesState> handle(LoadEmployeesState currentState) async* {
    yield currentState.copyWith(
      loadFailure: Failure.getOption(loadFailure),
      isLoading: false,
    );
  }
}

class LoadEmployeesSucceededEvent extends LoadEmployeesEvent {
  final List<Employee> employees;

  LoadEmployeesSucceededEvent(this.employees);

  @override
  Stream<LoadEmployeesState> handle(LoadEmployeesState currentState) async* {
    yield currentState.copyWith(
      employees: employees,
      isLoading: false,
      loadFailure: none(),
    );
  }
}

class LoadEmployeesFilterChangedEvent extends LoadEmployeesEvent {
  final String filterString;

  LoadEmployeesFilterChangedEvent(this.filterString);

  @override
  Stream<LoadEmployeesState> handle(LoadEmployeesState currentState) async* {
    yield currentState.copyWith(
      filterString: filterString,
      isFiltering: true,
    );
  }
}
class LoadEmployeesSearchFilterChangedEvent extends LoadEmployeesEvent {
  final String filterString;

  LoadEmployeesSearchFilterChangedEvent(this.filterString);

  @override
  Stream<LoadEmployeesState> handle(LoadEmployeesState currentState) async* {
    yield currentState.copyWith(
      searchFilterString: filterString,
    );
  }
}
class LoadEmployeesSearchTextChanged extends LoadEmployeesEvent {
  final String searchString;

  LoadEmployeesSearchTextChanged(this.searchString);

  @override
  Stream<LoadEmployeesState> handle(LoadEmployeesState currentState) async* {
    yield currentState.copyWith(
      searchString: searchString,
      isFiltering: true,
    );
  }
}

class LoadEmployeesFilterFailedEvent extends LoadEmployeesEvent {
  final Failure filterFailure;

  LoadEmployeesFilterFailedEvent(this.filterFailure);

  @override
  Stream<LoadEmployeesState> handle(LoadEmployeesState currentState) async* {
    yield currentState.copyWith(
      filterFailure: Failure.getOption(filterFailure),
      isFiltering: false,
    );
  }
}

class LoadEmployeesFilterSucceededEvent extends LoadEmployeesEvent {
  final List<Employee> employees;

  LoadEmployeesFilterSucceededEvent(this.employees);

  @override
  Stream<LoadEmployeesState> handle(LoadEmployeesState currentState) async* {
    yield currentState.copyWith(
      employees: employees,
      filterFailure: none(),
      isFiltering: false,
    );
  }
}
