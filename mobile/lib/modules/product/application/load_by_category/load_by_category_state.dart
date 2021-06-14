part of 'load_by_category_bloc.dart';

@freezed
abstract class LoadByCategoryState extends BlocState with _$LoadByCategoryState {
  factory LoadByCategoryState({
    List<Product> products,
    Option<Failure> loadFailure,
    Option<Failure> filterFailure,
    String searchString,
    String filterString,
    bool isLoading,
    bool isFiltering,
  }) = _LoadByCategoryState;

  factory LoadByCategoryState.initial() => LoadByCategoryState(
    products: [],
    loadFailure: none(),
    filterFailure: none(),
    searchString: '',
    filterString: '',
    isLoading: false,
    isFiltering: false,
  );
}
