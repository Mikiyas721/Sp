// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'new_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NewProductStateTearOff {
  const _$NewProductStateTearOff();

// ignore: unused_element
  _NewProductState call(
      {Either<ProductNameFailure, ProductName> productName,
      Either<ProductNameFailure, ProductName> brandName,
      Option<ProductCategory> productCategory,
      Either<QuantityFailure, Quantity> quantity,
      Either<DescriptionFailure, Description> description,
      Option<DateTime> manDate,
      Option<DateTime> expDate,
      Option<String> imageUrl,
      Option<Failure> requestFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool hasCompletedRequest}) {
    return _NewProductState(
      productName: productName,
      brandName: brandName,
      productCategory: productCategory,
      quantity: quantity,
      description: description,
      manDate: manDate,
      expDate: expDate,
      imageUrl: imageUrl,
      requestFailure: requestFailure,
      hasSubmitted: hasSubmitted,
      hasRequested: hasRequested,
      hasCompletedRequest: hasCompletedRequest,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NewProductState = _$NewProductStateTearOff();

/// @nodoc
mixin _$NewProductState {
  Either<ProductNameFailure, ProductName> get productName;
  Either<ProductNameFailure, ProductName> get brandName;
  Option<ProductCategory> get productCategory;
  Either<QuantityFailure, Quantity> get quantity;
  Either<DescriptionFailure, Description> get description;
  Option<DateTime> get manDate;
  Option<DateTime> get expDate;
  Option<String> get imageUrl;
  Option<Failure> get requestFailure;
  bool get hasSubmitted;
  bool get hasRequested;
  bool get hasCompletedRequest;

  @JsonKey(ignore: true)
  $NewProductStateCopyWith<NewProductState> get copyWith;
}

/// @nodoc
abstract class $NewProductStateCopyWith<$Res> {
  factory $NewProductStateCopyWith(
          NewProductState value, $Res Function(NewProductState) then) =
      _$NewProductStateCopyWithImpl<$Res>;
  $Res call(
      {Either<ProductNameFailure, ProductName> productName,
      Either<ProductNameFailure, ProductName> brandName,
      Option<ProductCategory> productCategory,
      Either<QuantityFailure, Quantity> quantity,
      Either<DescriptionFailure, Description> description,
      Option<DateTime> manDate,
      Option<DateTime> expDate,
      Option<String> imageUrl,
      Option<Failure> requestFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool hasCompletedRequest});
}

/// @nodoc
class _$NewProductStateCopyWithImpl<$Res>
    implements $NewProductStateCopyWith<$Res> {
  _$NewProductStateCopyWithImpl(this._value, this._then);

  final NewProductState _value;
  // ignore: unused_field
  final $Res Function(NewProductState) _then;

  @override
  $Res call({
    Object productName = freezed,
    Object brandName = freezed,
    Object productCategory = freezed,
    Object quantity = freezed,
    Object description = freezed,
    Object manDate = freezed,
    Object expDate = freezed,
    Object imageUrl = freezed,
    Object requestFailure = freezed,
    Object hasSubmitted = freezed,
    Object hasRequested = freezed,
    Object hasCompletedRequest = freezed,
  }) {
    return _then(_value.copyWith(
      productName: productName == freezed
          ? _value.productName
          : productName as Either<ProductNameFailure, ProductName>,
      brandName: brandName == freezed
          ? _value.brandName
          : brandName as Either<ProductNameFailure, ProductName>,
      productCategory: productCategory == freezed
          ? _value.productCategory
          : productCategory as Option<ProductCategory>,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity as Either<QuantityFailure, Quantity>,
      description: description == freezed
          ? _value.description
          : description as Either<DescriptionFailure, Description>,
      manDate:
          manDate == freezed ? _value.manDate : manDate as Option<DateTime>,
      expDate:
          expDate == freezed ? _value.expDate : expDate as Option<DateTime>,
      imageUrl:
          imageUrl == freezed ? _value.imageUrl : imageUrl as Option<String>,
      requestFailure: requestFailure == freezed
          ? _value.requestFailure
          : requestFailure as Option<Failure>,
      hasSubmitted:
          hasSubmitted == freezed ? _value.hasSubmitted : hasSubmitted as bool,
      hasRequested:
          hasRequested == freezed ? _value.hasRequested : hasRequested as bool,
      hasCompletedRequest: hasCompletedRequest == freezed
          ? _value.hasCompletedRequest
          : hasCompletedRequest as bool,
    ));
  }
}

/// @nodoc
abstract class _$NewProductStateCopyWith<$Res>
    implements $NewProductStateCopyWith<$Res> {
  factory _$NewProductStateCopyWith(
          _NewProductState value, $Res Function(_NewProductState) then) =
      __$NewProductStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<ProductNameFailure, ProductName> productName,
      Either<ProductNameFailure, ProductName> brandName,
      Option<ProductCategory> productCategory,
      Either<QuantityFailure, Quantity> quantity,
      Either<DescriptionFailure, Description> description,
      Option<DateTime> manDate,
      Option<DateTime> expDate,
      Option<String> imageUrl,
      Option<Failure> requestFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool hasCompletedRequest});
}

/// @nodoc
class __$NewProductStateCopyWithImpl<$Res>
    extends _$NewProductStateCopyWithImpl<$Res>
    implements _$NewProductStateCopyWith<$Res> {
  __$NewProductStateCopyWithImpl(
      _NewProductState _value, $Res Function(_NewProductState) _then)
      : super(_value, (v) => _then(v as _NewProductState));

  @override
  _NewProductState get _value => super._value as _NewProductState;

  @override
  $Res call({
    Object productName = freezed,
    Object brandName = freezed,
    Object productCategory = freezed,
    Object quantity = freezed,
    Object description = freezed,
    Object manDate = freezed,
    Object expDate = freezed,
    Object imageUrl = freezed,
    Object requestFailure = freezed,
    Object hasSubmitted = freezed,
    Object hasRequested = freezed,
    Object hasCompletedRequest = freezed,
  }) {
    return _then(_NewProductState(
      productName: productName == freezed
          ? _value.productName
          : productName as Either<ProductNameFailure, ProductName>,
      brandName: brandName == freezed
          ? _value.brandName
          : brandName as Either<ProductNameFailure, ProductName>,
      productCategory: productCategory == freezed
          ? _value.productCategory
          : productCategory as Option<ProductCategory>,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity as Either<QuantityFailure, Quantity>,
      description: description == freezed
          ? _value.description
          : description as Either<DescriptionFailure, Description>,
      manDate:
          manDate == freezed ? _value.manDate : manDate as Option<DateTime>,
      expDate:
          expDate == freezed ? _value.expDate : expDate as Option<DateTime>,
      imageUrl:
          imageUrl == freezed ? _value.imageUrl : imageUrl as Option<String>,
      requestFailure: requestFailure == freezed
          ? _value.requestFailure
          : requestFailure as Option<Failure>,
      hasSubmitted:
          hasSubmitted == freezed ? _value.hasSubmitted : hasSubmitted as bool,
      hasRequested:
          hasRequested == freezed ? _value.hasRequested : hasRequested as bool,
      hasCompletedRequest: hasCompletedRequest == freezed
          ? _value.hasCompletedRequest
          : hasCompletedRequest as bool,
    ));
  }
}

/// @nodoc
class _$_NewProductState implements _NewProductState {
  _$_NewProductState(
      {this.productName,
      this.brandName,
      this.productCategory,
      this.quantity,
      this.description,
      this.manDate,
      this.expDate,
      this.imageUrl,
      this.requestFailure,
      this.hasSubmitted,
      this.hasRequested,
      this.hasCompletedRequest});

  @override
  final Either<ProductNameFailure, ProductName> productName;
  @override
  final Either<ProductNameFailure, ProductName> brandName;
  @override
  final Option<ProductCategory> productCategory;
  @override
  final Either<QuantityFailure, Quantity> quantity;
  @override
  final Either<DescriptionFailure, Description> description;
  @override
  final Option<DateTime> manDate;
  @override
  final Option<DateTime> expDate;
  @override
  final Option<String> imageUrl;
  @override
  final Option<Failure> requestFailure;
  @override
  final bool hasSubmitted;
  @override
  final bool hasRequested;
  @override
  final bool hasCompletedRequest;

  @override
  String toString() {
    return 'NewProductState(productName: $productName, brandName: $brandName, productCategory: $productCategory, quantity: $quantity, description: $description, manDate: $manDate, expDate: $expDate, imageUrl: $imageUrl, requestFailure: $requestFailure, hasSubmitted: $hasSubmitted, hasRequested: $hasRequested, hasCompletedRequest: $hasCompletedRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewProductState &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality()
                    .equals(other.productName, productName)) &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality()
                    .equals(other.brandName, brandName)) &&
            (identical(other.productCategory, productCategory) ||
                const DeepCollectionEquality()
                    .equals(other.productCategory, productCategory)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.manDate, manDate) ||
                const DeepCollectionEquality()
                    .equals(other.manDate, manDate)) &&
            (identical(other.expDate, expDate) ||
                const DeepCollectionEquality()
                    .equals(other.expDate, expDate)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.requestFailure, requestFailure) ||
                const DeepCollectionEquality()
                    .equals(other.requestFailure, requestFailure)) &&
            (identical(other.hasSubmitted, hasSubmitted) ||
                const DeepCollectionEquality()
                    .equals(other.hasSubmitted, hasSubmitted)) &&
            (identical(other.hasRequested, hasRequested) ||
                const DeepCollectionEquality()
                    .equals(other.hasRequested, hasRequested)) &&
            (identical(other.hasCompletedRequest, hasCompletedRequest) ||
                const DeepCollectionEquality()
                    .equals(other.hasCompletedRequest, hasCompletedRequest)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(brandName) ^
      const DeepCollectionEquality().hash(productCategory) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(manDate) ^
      const DeepCollectionEquality().hash(expDate) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(requestFailure) ^
      const DeepCollectionEquality().hash(hasSubmitted) ^
      const DeepCollectionEquality().hash(hasRequested) ^
      const DeepCollectionEquality().hash(hasCompletedRequest);

  @JsonKey(ignore: true)
  @override
  _$NewProductStateCopyWith<_NewProductState> get copyWith =>
      __$NewProductStateCopyWithImpl<_NewProductState>(this, _$identity);
}

abstract class _NewProductState implements NewProductState {
  factory _NewProductState(
      {Either<ProductNameFailure, ProductName> productName,
      Either<ProductNameFailure, ProductName> brandName,
      Option<ProductCategory> productCategory,
      Either<QuantityFailure, Quantity> quantity,
      Either<DescriptionFailure, Description> description,
      Option<DateTime> manDate,
      Option<DateTime> expDate,
      Option<String> imageUrl,
      Option<Failure> requestFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool hasCompletedRequest}) = _$_NewProductState;

  @override
  Either<ProductNameFailure, ProductName> get productName;
  @override
  Either<ProductNameFailure, ProductName> get brandName;
  @override
  Option<ProductCategory> get productCategory;
  @override
  Either<QuantityFailure, Quantity> get quantity;
  @override
  Either<DescriptionFailure, Description> get description;
  @override
  Option<DateTime> get manDate;
  @override
  Option<DateTime> get expDate;
  @override
  Option<String> get imageUrl;
  @override
  Option<Failure> get requestFailure;
  @override
  bool get hasSubmitted;
  @override
  bool get hasRequested;
  @override
  bool get hasCompletedRequest;
  @override
  @JsonKey(ignore: true)
  _$NewProductStateCopyWith<_NewProductState> get copyWith;
}
