part of 'add_product_bloc.dart';

abstract class AddProductEvent extends BlocEvent<AddProductState>{}

class AddProductProductNameChangedEvent extends AddProductEvent {
  final String productName;

  AddProductProductNameChangedEvent(this.productName);

  @override
  Stream<AddProductState> handle(AddProductState currentState) async* {
    yield currentState.copyWith(
      productName: ProductName.create(productName),
    );
  }
}

class AddProductBrandNameChangedEvent extends AddProductEvent {
  final String brandName;

  AddProductBrandNameChangedEvent(this.brandName);

  @override
  Stream<AddProductState> handle(AddProductState currentState) async* {
    yield currentState.copyWith(
      brandName: ProductName.create(brandName),
    );
  }
}

class AddProductProductCategoryChangedEvent extends AddProductEvent {
  final String category;

  AddProductProductCategoryChangedEvent(this.category);

  @override
  Stream<AddProductState> handle(AddProductState currentState) async* {
    yield currentState.copyWith(
      productCategory: category.toCategory(),
    );
  }
}

class AddProductQuantityChangedEvent extends AddProductEvent {
  final String quantity;

  AddProductQuantityChangedEvent(this.quantity);

  @override
  Stream<AddProductState> handle(AddProductState currentState) async* {
    yield currentState.copyWith(
      quantity: Quantity.createFromString(quantity),
    );
  }
}

class AddProductDescriptionChangedEvent extends AddProductEvent {
  final String description;

  AddProductDescriptionChangedEvent(this.description);

  @override
  Stream<AddProductState> handle(AddProductState currentState) async* {
    yield currentState.copyWith(
      description: Description.create(description),
    );
  }
}

class AddProductManDateChangedEvent extends AddProductEvent {
  final DateTime manDate;

  AddProductManDateChangedEvent(this.manDate);

  @override
  Stream<AddProductState> handle(AddProductState currentState) async* {
    yield currentState.copyWith(
      manDate: Failure.getOption<DateTime>(manDate),
    );
  }
}

class AddProductExpDateChangedEvent extends AddProductEvent {
  final DateTime expDate;

  AddProductExpDateChangedEvent(this.expDate);

  @override
  Stream<AddProductState> handle(AddProductState currentState) async* {
    yield currentState.copyWith(
      expDate: Failure.getOption<DateTime>(expDate),
    );
  }
}

class AddProductImageChangedEvent extends AddProductEvent {
  final String url;
  final Uint8List data;

  AddProductImageChangedEvent(this.url, this.data);

  @override
  Stream<AddProductState> handle(AddProductState currentState) async* {
    yield currentState.copyWith(
      imageUrl: Failure.getOption<String>(url),
      imageData:Failure.getOption(data),
    );
  }
}

class AddProductHasSubmittedEvent extends AddProductEvent {
  @override
  Stream<AddProductState> handle(AddProductState currentState) async* {
    yield currentState.copyWith(
      hasSubmitted: true,
    );
  }
}

class AddProductHasRequestedEvent extends AddProductEvent {
  @override
  Stream<AddProductState> handle(AddProductState currentState) async* {
    yield currentState.copyWith(
      hasRequested: true,
    );
  }
}

class AddProductRequestedFailedEvent extends AddProductEvent {
  final Failure requestFailure;

  AddProductRequestedFailedEvent(this.requestFailure);

  @override
  Stream<AddProductState> handle(AddProductState currentState) async* {
    yield currentState.copyWith(
      requestFailure: Failure.getOption(requestFailure),
      hasRequested: false,
    );
  }
}
class AddProductRequestedSucceededEvent extends AddProductEvent {
  @override
  Stream<AddProductState> handle(AddProductState currentState) async* {
    yield currentState.copyWith(
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
      hasCompletedRequest: true,
    );
  }
}
