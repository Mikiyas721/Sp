// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'load_employees_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoadEmployeesStateTearOff {
  const _$LoadEmployeesStateTearOff();

// ignore: unused_element
  _LoadEmployeesState call(
      {List<Employee> employees,
      Option<Failure> loadFailure,
      Option<Failure> filterFailure,
      String searchString,
      String filterString,
      bool isLoading,
      bool isFiltering}) {
    return _LoadEmployeesState(
      employees: employees,
      loadFailure: loadFailure,
      filterFailure: filterFailure,
      searchString: searchString,
      filterString: filterString,
      isLoading: isLoading,
      isFiltering: isFiltering,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoadEmployeesState = _$LoadEmployeesStateTearOff();

/// @nodoc
mixin _$LoadEmployeesState {
  List<Employee> get employees;
  Option<Failure> get loadFailure;
  Option<Failure> get filterFailure;
  String get searchString;
  String get filterString;
  bool get isLoading;
  bool get isFiltering;

  @JsonKey(ignore: true)
  $LoadEmployeesStateCopyWith<LoadEmployeesState> get copyWith;
}

/// @nodoc
abstract class $LoadEmployeesStateCopyWith<$Res> {
  factory $LoadEmployeesStateCopyWith(
          LoadEmployeesState value, $Res Function(LoadEmployeesState) then) =
      _$LoadEmployeesStateCopyWithImpl<$Res>;
  $Res call(
      {List<Employee> employees,
      Option<Failure> loadFailure,
      Option<Failure> filterFailure,
      String searchString,
      String filterString,
      bool isLoading,
      bool isFiltering});
}

/// @nodoc
class _$LoadEmployeesStateCopyWithImpl<$Res>
    implements $LoadEmployeesStateCopyWith<$Res> {
  _$LoadEmployeesStateCopyWithImpl(this._value, this._then);

  final LoadEmployeesState _value;
  // ignore: unused_field
  final $Res Function(LoadEmployeesState) _then;

  @override
  $Res call({
    Object employees = freezed,
    Object loadFailure = freezed,
    Object filterFailure = freezed,
    Object searchString = freezed,
    Object filterString = freezed,
    Object isLoading = freezed,
    Object isFiltering = freezed,
  }) {
    return _then(_value.copyWith(
      employees:
          employees == freezed ? _value.employees : employees as List<Employee>,
      loadFailure: loadFailure == freezed
          ? _value.loadFailure
          : loadFailure as Option<Failure>,
      filterFailure: filterFailure == freezed
          ? _value.filterFailure
          : filterFailure as Option<Failure>,
      searchString: searchString == freezed
          ? _value.searchString
          : searchString as String,
      filterString: filterString == freezed
          ? _value.filterString
          : filterString as String,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isFiltering:
          isFiltering == freezed ? _value.isFiltering : isFiltering as bool,
    ));
  }
}

/// @nodoc
abstract class _$LoadEmployeesStateCopyWith<$Res>
    implements $LoadEmployeesStateCopyWith<$Res> {
  factory _$LoadEmployeesStateCopyWith(
          _LoadEmployeesState value, $Res Function(_LoadEmployeesState) then) =
      __$LoadEmployeesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Employee> employees,
      Option<Failure> loadFailure,
      Option<Failure> filterFailure,
      String searchString,
      String filterString,
      bool isLoading,
      bool isFiltering});
}

/// @nodoc
class __$LoadEmployeesStateCopyWithImpl<$Res>
    extends _$LoadEmployeesStateCopyWithImpl<$Res>
    implements _$LoadEmployeesStateCopyWith<$Res> {
  __$LoadEmployeesStateCopyWithImpl(
      _LoadEmployeesState _value, $Res Function(_LoadEmployeesState) _then)
      : super(_value, (v) => _then(v as _LoadEmployeesState));

  @override
  _LoadEmployeesState get _value => super._value as _LoadEmployeesState;

  @override
  $Res call({
    Object employees = freezed,
    Object loadFailure = freezed,
    Object filterFailure = freezed,
    Object searchString = freezed,
    Object filterString = freezed,
    Object isLoading = freezed,
    Object isFiltering = freezed,
  }) {
    return _then(_LoadEmployeesState(
      employees:
          employees == freezed ? _value.employees : employees as List<Employee>,
      loadFailure: loadFailure == freezed
          ? _value.loadFailure
          : loadFailure as Option<Failure>,
      filterFailure: filterFailure == freezed
          ? _value.filterFailure
          : filterFailure as Option<Failure>,
      searchString: searchString == freezed
          ? _value.searchString
          : searchString as String,
      filterString: filterString == freezed
          ? _value.filterString
          : filterString as String,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isFiltering:
          isFiltering == freezed ? _value.isFiltering : isFiltering as bool,
    ));
  }
}

/// @nodoc
class _$_LoadEmployeesState implements _LoadEmployeesState {
  _$_LoadEmployeesState(
      {this.employees,
      this.loadFailure,
      this.filterFailure,
      this.searchString,
      this.filterString,
      this.isLoading,
      this.isFiltering});

  @override
  final List<Employee> employees;
  @override
  final Option<Failure> loadFailure;
  @override
  final Option<Failure> filterFailure;
  @override
  final String searchString;
  @override
  final String filterString;
  @override
  final bool isLoading;
  @override
  final bool isFiltering;

  @override
  String toString() {
    return 'LoadEmployeesState(employees: $employees, loadFailure: $loadFailure, filterFailure: $filterFailure, searchString: $searchString, filterString: $filterString, isLoading: $isLoading, isFiltering: $isFiltering)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadEmployeesState &&
            (identical(other.employees, employees) ||
                const DeepCollectionEquality()
                    .equals(other.employees, employees)) &&
            (identical(other.loadFailure, loadFailure) ||
                const DeepCollectionEquality()
                    .equals(other.loadFailure, loadFailure)) &&
            (identical(other.filterFailure, filterFailure) ||
                const DeepCollectionEquality()
                    .equals(other.filterFailure, filterFailure)) &&
            (identical(other.searchString, searchString) ||
                const DeepCollectionEquality()
                    .equals(other.searchString, searchString)) &&
            (identical(other.filterString, filterString) ||
                const DeepCollectionEquality()
                    .equals(other.filterString, filterString)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isFiltering, isFiltering) ||
                const DeepCollectionEquality()
                    .equals(other.isFiltering, isFiltering)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(employees) ^
      const DeepCollectionEquality().hash(loadFailure) ^
      const DeepCollectionEquality().hash(filterFailure) ^
      const DeepCollectionEquality().hash(searchString) ^
      const DeepCollectionEquality().hash(filterString) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isFiltering);

  @JsonKey(ignore: true)
  @override
  _$LoadEmployeesStateCopyWith<_LoadEmployeesState> get copyWith =>
      __$LoadEmployeesStateCopyWithImpl<_LoadEmployeesState>(this, _$identity);
}

abstract class _LoadEmployeesState implements LoadEmployeesState {
  factory _LoadEmployeesState(
      {List<Employee> employees,
      Option<Failure> loadFailure,
      Option<Failure> filterFailure,
      String searchString,
      String filterString,
      bool isLoading,
      bool isFiltering}) = _$_LoadEmployeesState;

  @override
  List<Employee> get employees;
  @override
  Option<Failure> get loadFailure;
  @override
  Option<Failure> get filterFailure;
  @override
  String get searchString;
  @override
  String get filterString;
  @override
  bool get isLoading;
  @override
  bool get isFiltering;
  @override
  @JsonKey(ignore: true)
  _$LoadEmployeesStateCopyWith<_LoadEmployeesState> get copyWith;
}
