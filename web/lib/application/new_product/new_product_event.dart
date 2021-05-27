part of 'new_product_bloc.dart';

abstract class NewProductEvent extends BlocEvent<NewProductState>{}

class NewProductProductNameChangedEvent extends NewProductEvent {
  final String productName;

  NewProductProductNameChangedEvent(this.productName);

  @override
  Stream<NewProductState> handle(NewProductState currentState) async* {
    yield currentState.copyWith(
      productName: ProductName.create(productName),
    );
  }
}

class NewProductBrandNameChangedEvent extends NewProductEvent {
  final String brandName;

  NewProductBrandNameChangedEvent(this.brandName);

  @override
  Stream<NewProductState> handle(NewProductState currentState) async* {
    yield currentState.copyWith(
      brandName: ProductName.create(brandName),
    );
  }
}

class NewProductProductCategoryChangedEvent extends NewProductEvent {
  final ProductCategory category;

  NewProductProductCategoryChangedEvent(this.category);

  @override
  Stream<NewProductState> handle(NewProductState currentState) async* {
    yield currentState.copyWith(
      productCategory: Failure.getOption<ProductCategory>(category),
    );
  }
}

class NewProductQuantityChangedEvent extends NewProductEvent {
  final String quantity;

  NewProductQuantityChangedEvent(this.quantity);

  @override
  Stream<NewProductState> handle(NewProductState currentState) async* {
    yield currentState.copyWith(
      quantity: Quantity.createFromString(quantity),
    );
  }
}

class NewProductDescriptionChangedEvent extends NewProductEvent {
  final String description;

  NewProductDescriptionChangedEvent(this.description);

  @override
  Stream<NewProductState> handle(NewProductState currentState) async* {
    yield currentState.copyWith(
      description: Description.create(description),
    );
  }
}

class NewProductManDateChangedEvent extends NewProductEvent {
  final DateTime manDate;

  NewProductManDateChangedEvent(this.manDate);

  @override
  Stream<NewProductState> handle(NewProductState currentState) async* {
    yield currentState.copyWith(
      manDate: Failure.getOption<DateTime>(manDate),
    );
  }
}

class NewProductExpDateChangedEvent extends NewProductEvent {
  final DateTime expDate;

  NewProductExpDateChangedEvent(this.expDate);

  @override
  Stream<NewProductState> handle(NewProductState currentState) async* {
    yield currentState.copyWith(
      expDate: Failure.getOption<DateTime>(expDate),
    );
  }
}

class NewProductImageUrlChangedEvent extends NewProductEvent {
  final String url;

  NewProductImageUrlChangedEvent(this.url);

  @override
  Stream<NewProductState> handle(NewProductState currentState) async* {
    yield currentState.copyWith(
      imageUrl: Failure.getOption<String>(url),
    );
  }
}

class NewProductHasSubmittedEvent extends NewProductEvent {
  @override
  Stream<NewProductState> handle(NewProductState currentState) async* {
    yield currentState.copyWith(
      hasSubmitted: true,
    );
  }
}

class NewProductHasRequestedEvent extends NewProductEvent {
  @override
  Stream<NewProductState> handle(NewProductState currentState) async* {
    yield currentState.copyWith(
      hasRequested: true,
    );
  }
}

class NewProductHasRequestedFailedEvent extends NewProductEvent {
  final Failure requestFailure;

  NewProductHasRequestedFailedEvent(this.requestFailure);

  @override
  Stream<NewProductState> handle(NewProductState currentState) async* {
    yield currentState.copyWith(
      requestFailure: Failure.getOption(requestFailure),
      hasRequested: false,
    );
  }
}
class NewProductHasRequestedSucceededEvent extends NewProductEvent {
  @override
  Stream<NewProductState> handle(NewProductState currentState) async* {
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
