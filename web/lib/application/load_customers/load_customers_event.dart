part of 'load_customers_bloc.dart';

abstract class LoadCustomersEvent extends BlocEvent<LoadCustomersState> {}

class LoadCustomersIsLoadingEvent extends LoadCustomersEvent {
  @override
  Stream<LoadCustomersState> handle(LoadCustomersState currentState) async* {
    yield currentState.copyWith(
      isLoading: true,
    );
  }
}

class LoadCustomersFailedEvent extends LoadCustomersEvent {
  final Failure loadFailure;

  LoadCustomersFailedEvent(this.loadFailure);

  @override
  Stream<LoadCustomersState> handle(LoadCustomersState currentState) async* {
    yield currentState.copyWith(
      loadFailure: Failure.getFailureOption(loadFailure),
      isLoading: false,
    );
  }
}

class LoadEmployeesSucceededEvent extends LoadCustomersEvent {
  final List<Customer> customers;

  LoadEmployeesSucceededEvent(this.customers);

  @override
  Stream<LoadCustomersState> handle(LoadCustomersState currentState) async* {
    yield currentState.copyWith(
      customers: customers,
      isLoading: false,
      loadFailure: none(),
    );
  }
}

class LoadCustomersFilterChangedEvent extends LoadCustomersEvent {
  final String filterString;

  LoadCustomersFilterChangedEvent(this.filterString);

  @override
  Stream<LoadCustomersState> handle(LoadCustomersState currentState) async* {
    yield currentState.copyWith(
      filterString: filterString,
      isFiltering: true,
    );
  }
}

class LoadCustomersSearchTextChanged extends LoadCustomersEvent {
  final String searchString;

  LoadCustomersSearchTextChanged(this.searchString);

  @override
  Stream<LoadCustomersState> handle(LoadCustomersState currentState) async* {
    yield currentState.copyWith(
      searchString: searchString,
      isFiltering: true,
    );
  }
}

class LoadCustomersFilterFailedEvent extends LoadCustomersEvent {
  final Failure filterFailure;

  LoadCustomersFilterFailedEvent(this.filterFailure);

  @override
  Stream<LoadCustomersState> handle(LoadCustomersState currentState) async* {
    yield currentState.copyWith(
      filterFailure: Failure.getFailureOption(filterFailure),
      isFiltering: false,
    );
  }
}

class LoadCustomersFilterSucceededEvent extends LoadCustomersEvent {
  final List<Customer> customers;

  LoadCustomersFilterSucceededEvent(this.customers);

  @override
  Stream<LoadCustomersState> handle(LoadCustomersState currentState) async* {
    yield currentState.copyWith(
      customers: customers,
      filterFailure: none(),
      isFiltering: false,
    );
  }
}
