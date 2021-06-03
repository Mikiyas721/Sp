part of 'load_customers_bloc.dart';

@freezed
abstract class LoadCustomersState extends BlocState with _$LoadCustomersState {
  factory LoadCustomersState({
    List<Customer> customers,
    Option<Failure> loadFailure,
    Option<Failure> filterFailure,
    String searchString,
    String searchFilterString,
    String filterString,
    bool isLoading,
    bool isFiltering,
  }) = _LoadCustomersState;

  factory LoadCustomersState.initial()=>
      LoadCustomersState(
        customers: [],
        loadFailure: none(),
        filterFailure: none(),
        searchString: '',
        searchFilterString: '',
        filterString: '',
        isLoading: false,
        isFiltering: false,
      );
}
