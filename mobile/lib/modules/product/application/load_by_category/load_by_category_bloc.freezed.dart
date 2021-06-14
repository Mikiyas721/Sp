// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'load_by_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoadByCategoryStateTearOff {
  const _$LoadByCategoryStateTearOff();

// ignore: unused_element
  _LoadByCategoryState call(
      {List<Product> products,
      Option<Failure> loadFailure,
      Option<Failure> filterFailure,
      String searchString,
      String filterString,
      bool isLoading,
      bool isFiltering}) {
    return _LoadByCategoryState(
      products: products,
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
const $LoadByCategoryState = _$LoadByCategoryStateTearOff();

/// @nodoc
mixin _$LoadByCategoryState {
  List<Product> get products;
  Option<Failure> get loadFailure;
  Option<Failure> get filterFailure;
  String get searchString;
  String get filterString;
  bool get isLoading;
  bool get isFiltering;

  @JsonKey(ignore: true)
  $LoadByCategoryStateCopyWith<LoadByCategoryState> get copyWith;
}

/// @nodoc
abstract class $LoadByCategoryStateCopyWith<$Res> {
  factory $LoadByCategoryStateCopyWith(
          LoadByCategoryState value, $Res Function(LoadByCategoryState) then) =
      _$LoadByCategoryStateCopyWithImpl<$Res>;
  $Res call(
      {List<Product> products,
      Option<Failure> loadFailure,
      Option<Failure> filterFailure,
      String searchString,
      String filterString,
      bool isLoading,
      bool isFiltering});
}

/// @nodoc
class _$LoadByCategoryStateCopyWithImpl<$Res>
    implements $LoadByCategoryStateCopyWith<$Res> {
  _$LoadByCategoryStateCopyWithImpl(this._value, this._then);

  final LoadByCategoryState _value;
  // ignore: unused_field
  final $Res Function(LoadByCategoryState) _then;

  @override
  $Res call({
    Object products = freezed,
    Object loadFailure = freezed,
    Object filterFailure = freezed,
    Object searchString = freezed,
    Object filterString = freezed,
    Object isLoading = freezed,
    Object isFiltering = freezed,
  }) {
    return _then(_value.copyWith(
      products:
          products == freezed ? _value.products : products as List<Product>,
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
abstract class _$LoadByCategoryStateCopyWith<$Res>
    implements $LoadByCategoryStateCopyWith<$Res> {
  factory _$LoadByCategoryStateCopyWith(_LoadByCategoryState value,
          $Res Function(_LoadByCategoryState) then) =
      __$LoadByCategoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Product> products,
      Option<Failure> loadFailure,
      Option<Failure> filterFailure,
      String searchString,
      String filterString,
      bool isLoading,
      bool isFiltering});
}

/// @nodoc
class __$LoadByCategoryStateCopyWithImpl<$Res>
    extends _$LoadByCategoryStateCopyWithImpl<$Res>
    implements _$LoadByCategoryStateCopyWith<$Res> {
  __$LoadByCategoryStateCopyWithImpl(
      _LoadByCategoryState _value, $Res Function(_LoadByCategoryState) _then)
      : super(_value, (v) => _then(v as _LoadByCategoryState));

  @override
  _LoadByCategoryState get _value => super._value as _LoadByCategoryState;

  @override
  $Res call({
    Object products = freezed,
    Object loadFailure = freezed,
    Object filterFailure = freezed,
    Object searchString = freezed,
    Object filterString = freezed,
    Object isLoading = freezed,
    Object isFiltering = freezed,
  }) {
    return _then(_LoadByCategoryState(
      products:
          products == freezed ? _value.products : products as List<Product>,
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
class _$_LoadByCategoryState implements _LoadByCategoryState {
  _$_LoadByCategoryState(
      {this.products,
      this.loadFailure,
      this.filterFailure,
      this.searchString,
      this.filterString,
      this.isLoading,
      this.isFiltering});

  @override
  final List<Product> products;
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
    return 'LoadByCategoryState(products: $products, loadFailure: $loadFailure, filterFailure: $filterFailure, searchString: $searchString, filterString: $filterString, isLoading: $isLoading, isFiltering: $isFiltering)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadByCategoryState &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)) &&
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
      const DeepCollectionEquality().hash(products) ^
      const DeepCollectionEquality().hash(loadFailure) ^
      const DeepCollectionEquality().hash(filterFailure) ^
      const DeepCollectionEquality().hash(searchString) ^
      const DeepCollectionEquality().hash(filterString) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isFiltering);

  @JsonKey(ignore: true)
  @override
  _$LoadByCategoryStateCopyWith<_LoadByCategoryState> get copyWith =>
      __$LoadByCategoryStateCopyWithImpl<_LoadByCategoryState>(
          this, _$identity);
}

abstract class _LoadByCategoryState implements LoadByCategoryState {
  factory _LoadByCategoryState(
      {List<Product> products,
      Option<Failure> loadFailure,
      Option<Failure> filterFailure,
      String searchString,
      String filterString,
      bool isLoading,
      bool isFiltering}) = _$_LoadByCategoryState;

  @override
  List<Product> get products;
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
  _$LoadByCategoryStateCopyWith<_LoadByCategoryState> get copyWith;
}
