part of 'load_latest_products_bloc.dart';

abstract class LoadLatestProductsEvent extends BlocEvent<LoadLatestProductsState> {}

class LoadLatestProductsIsLoadingEvent extends LoadLatestProductsEvent {
  @override
  Stream<LoadLatestProductsState> handle(LoadLatestProductsState currentState) async* {
    yield currentState.copyWith(
      isLoading: true,
    );
  }
}

class LoadLatestProductsFailedEvent extends LoadLatestProductsEvent {
  final Failure loadFailure;

  LoadLatestProductsFailedEvent(this.loadFailure);

  @override
  Stream<LoadLatestProductsState> handle(LoadLatestProductsState currentState) async* {
    yield currentState.copyWith(
      loadFailure: Failure.getOption(loadFailure),
      isLoading: false,
    );
  }
}

class LoadLatestProductsSucceededEvent extends LoadLatestProductsEvent {
  final List<Product> products;

  LoadLatestProductsSucceededEvent(this.products);

  @override
  Stream<LoadLatestProductsState> handle(LoadLatestProductsState currentState) async* {
    yield currentState.copyWith(
      products: products,
      isLoading: false,
      loadFailure: none(),
    );
  }
}

class LoadLatestProductsFilterChangedEvent extends LoadLatestProductsEvent {
  final String filterString;

  LoadLatestProductsFilterChangedEvent(this.filterString);

  @override
  Stream<LoadLatestProductsState> handle(LoadLatestProductsState currentState) async* {
    yield currentState.copyWith(
      filterString: filterString,
      isFiltering: true,
    );
  }
}

class LoadLatestProductsSearchTextChanged extends LoadLatestProductsEvent {
  final String searchString;

  LoadLatestProductsSearchTextChanged(this.searchString);

  @override
  Stream<LoadLatestProductsState> handle(LoadLatestProductsState currentState) async* {
    yield currentState.copyWith(
      searchString: searchString,
      isFiltering: true,
    );
  }
}

class LoadLatestProductsFilterFailedEvent extends LoadLatestProductsEvent {
  final Failure filterFailure;

  LoadLatestProductsFilterFailedEvent(this.filterFailure);

  @override
  Stream<LoadLatestProductsState> handle(LoadLatestProductsState currentState) async* {
    yield currentState.copyWith(
      filterFailure: Failure.getOption(filterFailure),
      isFiltering: false,
    );
  }
}

class LoadLatestProductsFilterSucceededEvent extends LoadLatestProductsEvent {
  final List<Product> products;

  LoadLatestProductsFilterSucceededEvent(this.products);

  @override
  Stream<LoadLatestProductsState> handle(LoadLatestProductsState currentState) async* {
    yield currentState.copyWith(
      products: products,
      filterFailure: none(),
      isFiltering: false,
    );
  }
}
