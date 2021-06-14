// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'load_latest_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoadLatestProductsStateTearOff {
  const _$LoadLatestProductsStateTearOff();

// ignore: unused_element
  _LoadLatestProductsState call(
      {List<Product> products,
      Option<Failure> loadFailure,
      Option<Failure> filterFailure,
      String searchString,
      String filterString,
      bool isLoading,
      bool isFiltering}) {
    return _LoadLatestProductsState(
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
const $LoadLatestProductsState = _$LoadLatestProductsStateTearOff();

/// @nodoc
mixin _$LoadLatestProductsState {
  List<Product> get products;
  Option<Failure> get loadFailure;
  Option<Failure> get filterFailure;
  String get searchString;
  String get filterString;
  bool get isLoading;
  bool get isFiltering;

  @JsonKey(ignore: true)
  $LoadLatestProductsStateCopyWith<LoadLatestProductsState> get copyWith;
}

/// @nodoc
abstract class $LoadLatestProductsStateCopyWith<$Res> {
  factory $LoadLatestProductsStateCopyWith(LoadLatestProductsState value,
          $Res Function(LoadLatestProductsState) then) =
      _$LoadLatestProductsStateCopyWithImpl<$Res>;
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
class _$LoadLatestProductsStateCopyWithImpl<$Res>
    implements $LoadLatestProductsStateCopyWith<$Res> {
  _$LoadLatestProductsStateCopyWithImpl(this._value, this._then);

  final LoadLatestProductsState _value;
  // ignore: unused_field
  final $Res Function(LoadLatestProductsState) _then;

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
abstract class _$LoadLatestProductsStateCopyWith<$Res>
    implements $LoadLatestProductsStateCopyWith<$Res> {
  factory _$LoadLatestProductsStateCopyWith(_LoadLatestProductsState value,
          $Res Function(_LoadLatestProductsState) then) =
      __$LoadLatestProductsStateCopyWithImpl<$Res>;
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
class __$LoadLatestProductsStateCopyWithImpl<$Res>
    extends _$LoadLatestProductsStateCopyWithImpl<$Res>
    implements _$LoadLatestProductsStateCopyWith<$Res> {
  __$LoadLatestProductsStateCopyWithImpl(_LoadLatestProductsState _value,
      $Res Function(_LoadLatestProductsState) _then)
      : super(_value, (v) => _then(v as _LoadLatestProductsState));

  @override
  _LoadLatestProductsState get _value =>
      super._value as _LoadLatestProductsState;

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
    return _then(_LoadLatestProductsState(
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
class _$_LoadLatestProductsState implements _LoadLatestProductsState {
  _$_LoadLatestProductsState(
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
    return 'LoadLatestProductsState(products: $products, loadFailure: $loadFailure, filterFailure: $filterFailure, searchString: $searchString, filterString: $filterString, isLoading: $isLoading, isFiltering: $isFiltering)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadLatestProductsState &&
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
  _$LoadLatestProductsStateCopyWith<_LoadLatestProductsState> get copyWith =>
      __$LoadLatestProductsStateCopyWithImpl<_LoadLatestProductsState>(
          this, _$identity);
}

abstract class _LoadLatestProductsState implements LoadLatestProductsState {
  factory _LoadLatestProductsState(
      {List<Product> products,
      Option<Failure> loadFailure,
      Option<Failure> filterFailure,
      String searchString,
      String filterString,
      bool isLoading,
      bool isFiltering}) = _$_LoadLatestProductsState;

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
  _$LoadLatestProductsStateCopyWith<_LoadLatestProductsState> get copyWith;
}
