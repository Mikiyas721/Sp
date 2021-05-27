// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'load_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoadProductsStateTearOff {
  const _$LoadProductsStateTearOff();

// ignore: unused_element
  _LoadProductsState call(
      {List<Product> products,
      Option<Failure> loadFailure,
      Option<Failure> filterFailure,
      String searchString,
      String filterString,
      bool isLoading,
      bool isFiltering}) {
    return _LoadProductsState(
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
const $LoadProductsState = _$LoadProductsStateTearOff();

/// @nodoc
mixin _$LoadProductsState {
  List<Product> get products;
  Option<Failure> get loadFailure;
  Option<Failure> get filterFailure;
  String get searchString;
  String get filterString;
  bool get isLoading;
  bool get isFiltering;

  @JsonKey(ignore: true)
  $LoadProductsStateCopyWith<LoadProductsState> get copyWith;
}

/// @nodoc
abstract class $LoadProductsStateCopyWith<$Res> {
  factory $LoadProductsStateCopyWith(
          LoadProductsState value, $Res Function(LoadProductsState) then) =
      _$LoadProductsStateCopyWithImpl<$Res>;
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
class _$LoadProductsStateCopyWithImpl<$Res>
    implements $LoadProductsStateCopyWith<$Res> {
  _$LoadProductsStateCopyWithImpl(this._value, this._then);

  final LoadProductsState _value;
  // ignore: unused_field
  final $Res Function(LoadProductsState) _then;

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
abstract class _$LoadProductsStateCopyWith<$Res>
    implements $LoadProductsStateCopyWith<$Res> {
  factory _$LoadProductsStateCopyWith(
          _LoadProductsState value, $Res Function(_LoadProductsState) then) =
      __$LoadProductsStateCopyWithImpl<$Res>;
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
class __$LoadProductsStateCopyWithImpl<$Res>
    extends _$LoadProductsStateCopyWithImpl<$Res>
    implements _$LoadProductsStateCopyWith<$Res> {
  __$LoadProductsStateCopyWithImpl(
      _LoadProductsState _value, $Res Function(_LoadProductsState) _then)
      : super(_value, (v) => _then(v as _LoadProductsState));

  @override
  _LoadProductsState get _value => super._value as _LoadProductsState;

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
    return _then(_LoadProductsState(
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
class _$_LoadProductsState implements _LoadProductsState {
  _$_LoadProductsState(
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
    return 'LoadProductsState(products: $products, loadFailure: $loadFailure, filterFailure: $filterFailure, searchString: $searchString, filterString: $filterString, isLoading: $isLoading, isFiltering: $isFiltering)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadProductsState &&
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
  _$LoadProductsStateCopyWith<_LoadProductsState> get copyWith =>
      __$LoadProductsStateCopyWithImpl<_LoadProductsState>(this, _$identity);
}

abstract class _LoadProductsState implements LoadProductsState {
  factory _LoadProductsState(
      {List<Product> products,
      Option<Failure> loadFailure,
      Option<Failure> filterFailure,
      String searchString,
      String filterString,
      bool isLoading,
      bool isFiltering}) = _$_LoadProductsState;

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
  _$LoadProductsStateCopyWith<_LoadProductsState> get copyWith;
}
