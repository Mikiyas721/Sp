part of 'load_employees_bloc.dart';

@freezed
abstract class LoadEmployeesState extends BlocState with _$LoadEmployeesState {
  factory LoadEmployeesState({
    List<Employee> employees,
    Option<Failure> loadFailure,
    Option<Failure> filterFailure,
    String searchString,
    String filterString,
    bool isLoading,
    bool isFiltering,
  }) = _LoadEmployeesState;

  factory LoadEmployeesState.initial() => LoadEmployeesState(
        employees: [],
        loadFailure: none(),
        filterFailure: none(),
        searchString: '',
        filterString: "",
        isLoading: false,
        isFiltering: false,
      );
}
