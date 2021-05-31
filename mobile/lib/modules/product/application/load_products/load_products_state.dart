part of 'load_products_bloc.dart';

@freezed
abstract class LoadProductsState extends BlocState with _$LoadProductsState {
  factory LoadProductsState({
    List<Product> products,
    Option<Failure> loadFailure,
    Option<Failure> filterFailure,
    String searchString,
    String filterString,
    bool isLoading,
    bool isFiltering,
  }) = _LoadProductsState;

  factory LoadProductsState.initial() => LoadProductsState(
    products: [],
    loadFailure: none(),
    filterFailure: none(),
    searchString: '',
    filterString: '',
    isLoading: false,
    isFiltering: false,
  );
}
