part of 'new_product_bloc.dart';

@freezed
abstract class NewProductState extends BlocState with _$NewProductState {
  factory NewProductState({
    Either<ProductNameFailure, ProductName> productName,
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
    bool hasCompletedRequest,
  }) = _NewProductState;

  factory NewProductState.initial() => NewProductState(
    productName: ProductName.create(''),
    brandName: ProductName.create(''),
    productCategory: none(),
    quantity: Quantity.create(0),
    description: Description.create(''),
    manDate: none(),
    expDate: none(),
    imageUrl: none(),
    requestFailure: none(),
    hasSubmitted: false,
    hasRequested: false,
    hasCompletedRequest: false,
  );
}