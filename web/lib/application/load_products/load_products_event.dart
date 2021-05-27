part of 'load_products_bloc.dart';

abstract class LoadProductsEvent extends BlocEvent<LoadProductsState> {}

class LoadProductsIsLoadingEvent extends LoadProductsEvent {
  @override
  Stream<LoadProductsState> handle(LoadProductsState currentState) async* {
    yield currentState.copyWith(
      isLoading: true,
    );
  }
}

class LoadProductsFailedEvent extends LoadProductsEvent {
  final Failure loadFailure;

  LoadProductsFailedEvent(this.loadFailure);

  @override
  Stream<LoadProductsState> handle(LoadProductsState currentState) async* {
    yield currentState.copyWith(
      loadFailure: Failure.getOption(loadFailure),
      isLoading: false,
    );
  }
}

class LoadProductsSucceededEvent extends LoadProductsEvent {
  final List<Product> products;

  LoadProductsSucceededEvent(this.products);

  @override
  Stream<LoadProductsState> handle(LoadProductsState currentState) async* {
    yield currentState.copyWith(
      products: products,
      isLoading: false,
      loadFailure: none(),
    );
  }
}

class LoadProductsFilterChangedEvent extends LoadProductsEvent {
  final String filterString;

  LoadProductsFilterChangedEvent(this.filterString);

  @override
  Stream<LoadProductsState> handle(LoadProductsState currentState) async* {
    yield currentState.copyWith(
      filterString: filterString,
      isFiltering: true,
    );
  }
}

class LoadProductsSearchTextChanged extends LoadProductsEvent {
  final String searchString;

  LoadProductsSearchTextChanged(this.searchString);

  @override
  Stream<LoadProductsState> handle(LoadProductsState currentState) async* {
    yield currentState.copyWith(
      searchString: searchString,
      isFiltering: true,
    );
  }
}

class LoadProductsFilterFailedEvent extends LoadProductsEvent {
  final Failure filterFailure;

  LoadProductsFilterFailedEvent(this.filterFailure);

  @override
  Stream<LoadProductsState> handle(LoadProductsState currentState) async* {
    yield currentState.copyWith(
      filterFailure: Failure.getOption(filterFailure),
      isFiltering: false,
    );
  }
}

class LoadProductsFilterSucceededEvent extends LoadProductsEvent {
  final List<Product> products;

  LoadProductsFilterSucceededEvent(this.products);

  @override
  Stream<LoadProductsState> handle(LoadProductsState currentState) async* {
    yield currentState.copyWith(
      products: products,
      filterFailure: none(),
      isFiltering: false,
    );
  }
}
