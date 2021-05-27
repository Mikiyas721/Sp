// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'load_customers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoadCustomersStateTearOff {
  const _$LoadCustomersStateTearOff();

// ignore: unused_element
  _LoadCustomersState call(
      {List<Customer> customers,
      Option<Failure> loadFailure,
      Option<Failure> filterFailure,
      String searchString,
      String filterString,
      bool isLoading,
      bool isFiltering}) {
    return _LoadCustomersState(
      customers: customers,
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
const $LoadCustomersState = _$LoadCustomersStateTearOff();

/// @nodoc
mixin _$LoadCustomersState {
  List<Customer> get customers;
  Option<Failure> get loadFailure;
  Option<Failure> get filterFailure;
  String get searchString;
  String get filterString;
  bool get isLoading;
  bool get isFiltering;

  @JsonKey(ignore: true)
  $LoadCustomersStateCopyWith<LoadCustomersState> get copyWith;
}

/// @nodoc
abstract class $LoadCustomersStateCopyWith<$Res> {
  factory $LoadCustomersStateCopyWith(
          LoadCustomersState value, $Res Function(LoadCustomersState) then) =
      _$LoadCustomersStateCopyWithImpl<$Res>;
  $Res call(
      {List<Customer> customers,
      Option<Failure> loadFailure,
      Option<Failure> filterFailure,
      String searchString,
      String filterString,
      bool isLoading,
      bool isFiltering});
}

/// @nodoc
class _$LoadCustomersStateCopyWithImpl<$Res>
    implements $LoadCustomersStateCopyWith<$Res> {
  _$LoadCustomersStateCopyWithImpl(this._value, this._then);

  final LoadCustomersState _value;
  // ignore: unused_field
  final $Res Function(LoadCustomersState) _then;

  @override
  $Res call({
    Object customers = freezed,
    Object loadFailure = freezed,
    Object filterFailure = freezed,
    Object searchString = freezed,
    Object filterString = freezed,
    Object isLoading = freezed,
    Object isFiltering = freezed,
  }) {
    return _then(_value.copyWith(
      customers:
          customers == freezed ? _value.customers : customers as List<Customer>,
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
abstract class _$LoadCustomersStateCopyWith<$Res>
    implements $LoadCustomersStateCopyWith<$Res> {
  factory _$LoadCustomersStateCopyWith(
          _LoadCustomersState value, $Res Function(_LoadCustomersState) then) =
      __$LoadCustomersStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Customer> customers,
      Option<Failure> loadFailure,
      Option<Failure> filterFailure,
      String searchString,
      String filterString,
      bool isLoading,
      bool isFiltering});
}

/// @nodoc
class __$LoadCustomersStateCopyWithImpl<$Res>
    extends _$LoadCustomersStateCopyWithImpl<$Res>
    implements _$LoadCustomersStateCopyWith<$Res> {
  __$LoadCustomersStateCopyWithImpl(
      _LoadCustomersState _value, $Res Function(_LoadCustomersState) _then)
      : super(_value, (v) => _then(v as _LoadCustomersState));

  @override
  _LoadCustomersState get _value => super._value as _LoadCustomersState;

  @override
  $Res call({
    Object customers = freezed,
    Object loadFailure = freezed,
    Object filterFailure = freezed,
    Object searchString = freezed,
    Object filterString = freezed,
    Object isLoading = freezed,
    Object isFiltering = freezed,
  }) {
    return _then(_LoadCustomersState(
      customers:
          customers == freezed ? _value.customers : customers as List<Customer>,
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
class _$_LoadCustomersState implements _LoadCustomersState {
  _$_LoadCustomersState(
      {this.customers,
      this.loadFailure,
      this.filterFailure,
      this.searchString,
      this.filterString,
      this.isLoading,
      this.isFiltering});

  @override
  final List<Customer> customers;
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
    return 'LoadCustomersState(customers: $customers, loadFailure: $loadFailure, filterFailure: $filterFailure, searchString: $searchString, filterString: $filterString, isLoading: $isLoading, isFiltering: $isFiltering)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadCustomersState &&
            (identical(other.customers, customers) ||
                const DeepCollectionEquality()
                    .equals(other.customers, customers)) &&
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
      const DeepCollectionEquality().hash(customers) ^
      const DeepCollectionEquality().hash(loadFailure) ^
      const DeepCollectionEquality().hash(filterFailure) ^
      const DeepCollectionEquality().hash(searchString) ^
      const DeepCollectionEquality().hash(filterString) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isFiltering);

  @JsonKey(ignore: true)
  @override
  _$LoadCustomersStateCopyWith<_LoadCustomersState> get copyWith =>
      __$LoadCustomersStateCopyWithImpl<_LoadCustomersState>(this, _$identity);
}

abstract class _LoadCustomersState implements LoadCustomersState {
  factory _LoadCustomersState(
      {List<Customer> customers,
      Option<Failure> loadFailure,
      Option<Failure> filterFailure,
      String searchString,
      String filterString,
      bool isLoading,
      bool isFiltering}) = _$_LoadCustomersState;

  @override
  List<Customer> get customers;
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
  _$LoadCustomersStateCopyWith<_LoadCustomersState> get copyWith;
}
