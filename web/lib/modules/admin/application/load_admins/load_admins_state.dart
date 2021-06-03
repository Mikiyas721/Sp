part of 'load_admins_bloc.dart';

@freezed
abstract class LoadAdminsState extends BlocState with _$LoadAdminsState {
  factory LoadAdminsState({
    List<Admin> admins,
    Option<Failure> loadFailure,
    Option<Failure> filterFailure,
    String searchString,
    String searchFilter,
    String filterString,
    bool isLoading,
    bool isFiltering,
  }) = _LoadAdminsState;

  factory LoadAdminsState.initial() => LoadAdminsState(
        admins: [],
        loadFailure: none(),
        filterFailure: none(),
        searchString: '',
        searchFilter: '',
        filterString: "",
        isLoading: false,
        isFiltering: false,
      );
}
