// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'load_admins_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoadAdminsStateTearOff {
  const _$LoadAdminsStateTearOff();

// ignore: unused_element
  _LoadAdminsState call(
      {List<Admin> admins,
      Option<Failure> loadFailure,
      Option<Failure> filterFailure,
      String searchString,
      String searchFilter,
      String filterString,
      bool isLoading,
      bool isFiltering}) {
    return _LoadAdminsState(
      admins: admins,
      loadFailure: loadFailure,
      filterFailure: filterFailure,
      searchString: searchString,
      searchFilter: searchFilter,
      filterString: filterString,
      isLoading: isLoading,
      isFiltering: isFiltering,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoadAdminsState = _$LoadAdminsStateTearOff();

/// @nodoc
mixin _$LoadAdminsState {
  List<Admin> get admins;
  Option<Failure> get loadFailure;
  Option<Failure> get filterFailure;
  String get searchString;
  String get searchFilter;
  String get filterString;
  bool get isLoading;
  bool get isFiltering;

  @JsonKey(ignore: true)
  $LoadAdminsStateCopyWith<LoadAdminsState> get copyWith;
}

/// @nodoc
abstract class $LoadAdminsStateCopyWith<$Res> {
  factory $LoadAdminsStateCopyWith(
          LoadAdminsState value, $Res Function(LoadAdminsState) then) =
      _$LoadAdminsStateCopyWithImpl<$Res>;
  $Res call(
      {List<Admin> admins,
      Option<Failure> loadFailure,
      Option<Failure> filterFailure,
      String searchString,
      String searchFilter,
      String filterString,
      bool isLoading,
      bool isFiltering});
}

/// @nodoc
class _$LoadAdminsStateCopyWithImpl<$Res>
    implements $LoadAdminsStateCopyWith<$Res> {
  _$LoadAdminsStateCopyWithImpl(this._value, this._then);

  final LoadAdminsState _value;
  // ignore: unused_field
  final $Res Function(LoadAdminsState) _then;

  @override
  $Res call({
    Object admins = freezed,
    Object loadFailure = freezed,
    Object filterFailure = freezed,
    Object searchString = freezed,
    Object searchFilter = freezed,
    Object filterString = freezed,
    Object isLoading = freezed,
    Object isFiltering = freezed,
  }) {
    return _then(_value.copyWith(
      admins: admins == freezed ? _value.admins : admins as List<Admin>,
      loadFailure: loadFailure == freezed
          ? _value.loadFailure
          : loadFailure as Option<Failure>,
      filterFailure: filterFailure == freezed
          ? _value.filterFailure
          : filterFailure as Option<Failure>,
      searchString: searchString == freezed
          ? _value.searchString
          : searchString as String,
      searchFilter: searchFilter == freezed
          ? _value.searchFilter
          : searchFilter as String,
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
abstract class _$LoadAdminsStateCopyWith<$Res>
    implements $LoadAdminsStateCopyWith<$Res> {
  factory _$LoadAdminsStateCopyWith(
          _LoadAdminsState value, $Res Function(_LoadAdminsState) then) =
      __$LoadAdminsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Admin> admins,
      Option<Failure> loadFailure,
      Option<Failure> filterFailure,
      String searchString,
      String searchFilter,
      String filterString,
      bool isLoading,
      bool isFiltering});
}

/// @nodoc
class __$LoadAdminsStateCopyWithImpl<$Res>
    extends _$LoadAdminsStateCopyWithImpl<$Res>
    implements _$LoadAdminsStateCopyWith<$Res> {
  __$LoadAdminsStateCopyWithImpl(
      _LoadAdminsState _value, $Res Function(_LoadAdminsState) _then)
      : super(_value, (v) => _then(v as _LoadAdminsState));

  @override
  _LoadAdminsState get _value => super._value as _LoadAdminsState;

  @override
  $Res call({
    Object admins = freezed,
    Object loadFailure = freezed,
    Object filterFailure = freezed,
    Object searchString = freezed,
    Object searchFilter = freezed,
    Object filterString = freezed,
    Object isLoading = freezed,
    Object isFiltering = freezed,
  }) {
    return _then(_LoadAdminsState(
      admins: admins == freezed ? _value.admins : admins as List<Admin>,
      loadFailure: loadFailure == freezed
          ? _value.loadFailure
          : loadFailure as Option<Failure>,
      filterFailure: filterFailure == freezed
          ? _value.filterFailure
          : filterFailure as Option<Failure>,
      searchString: searchString == freezed
          ? _value.searchString
          : searchString as String,
      searchFilter: searchFilter == freezed
          ? _value.searchFilter
          : searchFilter as String,
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
class _$_LoadAdminsState implements _LoadAdminsState {
  _$_LoadAdminsState(
      {this.admins,
      this.loadFailure,
      this.filterFailure,
      this.searchString,
      this.searchFilter,
      this.filterString,
      this.isLoading,
      this.isFiltering});

  @override
  final List<Admin> admins;
  @override
  final Option<Failure> loadFailure;
  @override
  final Option<Failure> filterFailure;
  @override
  final String searchString;
  @override
  final String searchFilter;
  @override
  final String filterString;
  @override
  final bool isLoading;
  @override
  final bool isFiltering;

  @override
  String toString() {
    return 'LoadAdminsState(admins: $admins, loadFailure: $loadFailure, filterFailure: $filterFailure, searchString: $searchString, searchFilter: $searchFilter, filterString: $filterString, isLoading: $isLoading, isFiltering: $isFiltering)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadAdminsState &&
            (identical(other.admins, admins) ||
                const DeepCollectionEquality().equals(other.admins, admins)) &&
            (identical(other.loadFailure, loadFailure) ||
                const DeepCollectionEquality()
                    .equals(other.loadFailure, loadFailure)) &&
            (identical(other.filterFailure, filterFailure) ||
                const DeepCollectionEquality()
                    .equals(other.filterFailure, filterFailure)) &&
            (identical(other.searchString, searchString) ||
                const DeepCollectionEquality()
                    .equals(other.searchString, searchString)) &&
            (identical(other.searchFilter, searchFilter) ||
                const DeepCollectionEquality()
                    .equals(other.searchFilter, searchFilter)) &&
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
      const DeepCollectionEquality().hash(admins) ^
      const DeepCollectionEquality().hash(loadFailure) ^
      const DeepCollectionEquality().hash(filterFailure) ^
      const DeepCollectionEquality().hash(searchString) ^
      const DeepCollectionEquality().hash(searchFilter) ^
      const DeepCollectionEquality().hash(filterString) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isFiltering);

  @JsonKey(ignore: true)
  @override
  _$LoadAdminsStateCopyWith<_LoadAdminsState> get copyWith =>
      __$LoadAdminsStateCopyWithImpl<_LoadAdminsState>(this, _$identity);
}

abstract class _LoadAdminsState implements LoadAdminsState {
  factory _LoadAdminsState(
      {List<Admin> admins,
      Option<Failure> loadFailure,
      Option<Failure> filterFailure,
      String searchString,
      String searchFilter,
      String filterString,
      bool isLoading,
      bool isFiltering}) = _$_LoadAdminsState;

  @override
  List<Admin> get admins;
  @override
  Option<Failure> get loadFailure;
  @override
  Option<Failure> get filterFailure;
  @override
  String get searchString;
  @override
  String get searchFilter;
  @override
  String get filterString;
  @override
  bool get isLoading;
  @override
  bool get isFiltering;
  @override
  @JsonKey(ignore: true)
  _$LoadAdminsStateCopyWith<_LoadAdminsState> get copyWith;
}
