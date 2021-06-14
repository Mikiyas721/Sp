part of 'load_by_category_bloc.dart';

abstract class LoadByCategoryEvent extends BlocEvent<LoadByCategoryState> {}

class LoadByCategoryIsLoadingEvent extends LoadByCategoryEvent {
  @override
  Stream<LoadByCategoryState> handle(LoadByCategoryState currentState) async* {
    yield currentState.copyWith(
      isLoading: true,
    );
  }
}

class LoadByCategoryFailedEvent extends LoadByCategoryEvent {
  final Failure loadFailure;

  LoadByCategoryFailedEvent(this.loadFailure);

  @override
  Stream<LoadByCategoryState> handle(LoadByCategoryState currentState) async* {
    yield currentState.copyWith(
      loadFailure: Failure.getOption(loadFailure),
      isLoading: false,
    );
  }
}

class LoadByCategorySucceededEvent extends LoadByCategoryEvent {
  final List<Product> products;

  LoadByCategorySucceededEvent(this.products);

  @override
  Stream<LoadByCategoryState> handle(LoadByCategoryState currentState) async* {
    yield currentState.copyWith(
      products: products,
      isLoading: false,
      loadFailure: none(),
    );
  }
}

class LoadByCategoryFilterChangedEvent extends LoadByCategoryEvent {
  final String filterString;

  LoadByCategoryFilterChangedEvent(this.filterString);

  @override
  Stream<LoadByCategoryState> handle(LoadByCategoryState currentState) async* {
    yield currentState.copyWith(
      filterString: filterString,
      isFiltering: true,
    );
  }
}

class LoadByCategorySearchTextChanged extends LoadByCategoryEvent {
  final String searchString;

  LoadByCategorySearchTextChanged(this.searchString);

  @override
  Stream<LoadByCategoryState> handle(LoadByCategoryState currentState) async* {
    yield currentState.copyWith(
      searchString: searchString,
      isFiltering: true,
    );
  }
}

class LoadByCategoryFilterFailedEvent extends LoadByCategoryEvent {
  final Failure filterFailure;

  LoadByCategoryFilterFailedEvent(this.filterFailure);

  @override
  Stream<LoadByCategoryState> handle(LoadByCategoryState currentState) async* {
    yield currentState.copyWith(
      filterFailure: Failure.getOption(filterFailure),
      isFiltering: false,
    );
  }
}

class LoadByCategoryFilterSucceededEvent extends LoadByCategoryEvent {
  final List<Product> products;

  LoadByCategoryFilterSucceededEvent(this.products);

  @override
  Stream<LoadByCategoryState> handle(LoadByCategoryState currentState) async* {
    yield currentState.copyWith(
      products: products,
      filterFailure: none(),
      isFiltering: false,
    );
  }
}
