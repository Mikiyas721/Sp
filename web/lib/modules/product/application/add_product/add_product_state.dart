part of 'add_product_bloc.dart';

@freezed
abstract class AddProductState extends BlocState with _$AddProductState {
  factory AddProductState({
    Either<ProductNameFailure, ProductName> productName,
    Either<ProductNameFailure, ProductName> brandName,
    Option<ProductCategory> productCategory,
    Either<QuantityFailure, Quantity> quantity,
    Either<PriceFailure, Price> price,
    Either<DescriptionFailure, Description> description,
    Option<DateTime> manDate,
    Option<DateTime> expDate,
    Either<ImageNameFailure,ImageName> imageName,
    Option<Uint8List> imageData,
    Option<Failure> requestFailure,
    bool hasSubmitted,
    bool hasRequested,
    bool hasCompletedRequest,
  }) = _AddProductState;

  factory AddProductState.initial() => AddProductState(
    imageName:ImageName.create(''),
    productName: ProductName.create(''),
    brandName: ProductName.create(''),
    productCategory: none(),
    quantity: Quantity.create(0),
    price: Price.create(0.0),
    description: Description.create(''),
    manDate: none(),
    expDate: none(),
    imageData:none(),
    requestFailure: none(),
    hasSubmitted: false,
    hasRequested: false,
    hasCompletedRequest: false,
  );
}