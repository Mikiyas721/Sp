part of 'load_latest_products_bloc.dart';

@freezed
abstract class LoadLatestProductsState extends BlocState with _$LoadLatestProductsState {
  factory LoadLatestProductsState({
    List<Product> products,
    Option<Failure> loadFailure,
    Option<Failure> filterFailure,
    String searchString,
    String filterString,
    bool isLoading,
    bool isFiltering,
  }) = _LoadLatestProductsState;

  factory LoadLatestProductsState.initial() => LoadLatestProductsState(
    products: [],
    loadFailure: none(),
    filterFailure: none(),
    searchString: '',
    filterString: '',
    isLoading: false,
    isFiltering: false,
  );
}
