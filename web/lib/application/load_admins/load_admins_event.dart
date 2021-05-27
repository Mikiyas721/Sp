part of 'load_admins_bloc.dart';

@immutable
abstract class LoadAdminsEvent extends BlocEvent<LoadAdminsState> {}

class LoadAdminsIsLoadingEvent extends LoadAdminsEvent {
  @override
  Stream<LoadAdminsState> handle(LoadAdminsState currentState) async* {
    yield currentState.copyWith(
      isLoading: true,
    );
  }
}

class LoadAdminsFailedEvent extends LoadAdminsEvent {
  final Failure loadFailure;

  LoadAdminsFailedEvent(this.loadFailure);

  @override
  Stream<LoadAdminsState> handle(LoadAdminsState currentState) async* {
    yield currentState.copyWith(
      loadFailure: Failure.getOption(loadFailure),
      isLoading: false,
    );
  }
}

class LoadAdminsSucceededEvent extends LoadAdminsEvent {
  final List<Admin> admins;

  LoadAdminsSucceededEvent(this.admins);

  @override
  Stream<LoadAdminsState> handle(LoadAdminsState currentState) async* {
    yield currentState.copyWith(
      admins: admins,
      isLoading: false,
      loadFailure: none(),
    );
  }
}

class LoadAdminsFilterChangedEvent extends LoadAdminsEvent {
  final String filterString;

  LoadAdminsFilterChangedEvent(this.filterString);

  @override
  Stream<LoadAdminsState> handle(LoadAdminsState currentState) async* {
    yield currentState.copyWith(
      filterString: filterString,
      isFiltering: true,
    );
  }
}

class LoadAdminsSearchTextChanged extends LoadAdminsEvent {
  final String searchString;

  LoadAdminsSearchTextChanged(this.searchString);

  @override
  Stream<LoadAdminsState> handle(LoadAdminsState currentState) async* {
    yield currentState.copyWith(
      searchString: searchString,
      isFiltering: true,
    );
  }
}

class LoadAdminsFilterFailedEvent extends LoadAdminsEvent {
  final Failure filterFailure;

  LoadAdminsFilterFailedEvent(this.filterFailure);

  @override
  Stream<LoadAdminsState> handle(LoadAdminsState currentState) async* {
    yield currentState.copyWith(
      filterFailure: Failure.getOption(filterFailure),
      isFiltering: false,
    );
  }
}

class LoadAdminsFilterSucceededEvent extends LoadAdminsEvent {
  final List<Admin> admins;

  LoadAdminsFilterSucceededEvent(this.admins);

  @override
  Stream<LoadAdminsState> handle(LoadAdminsState currentState) async* {
    yield currentState.copyWith(
      admins: admins,
      filterFailure: none(),
      isFiltering: false,
    );
  }
}
