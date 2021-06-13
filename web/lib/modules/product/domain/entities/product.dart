import 'package:dartz/dartz.dart';
import 'package:sp_web/common/domain/value_objects/image_url.dart';
import 'package:sp_web/common/entity.dart';
import 'package:sp_web/common/enums/product_category.dart';
import 'package:sp_web/modules/product/domain/value_objects/description.dart';
import 'package:sp_web/modules/product/domain/value_objects/price.dart';
import 'package:sp_web/modules/product/domain/value_objects/product_name.dart';
import 'package:sp_web/modules/product/domain/value_objects/quantity.dart';
import '../../../../common/extensions.dart';
import 'dart:typed_data';

class Product extends Entity implements TimeStampedEntity {
  final ImageName imageName;
  final Uint8List imageFile;
  final ProductName productName;
  final ProductName brandName;
  final ProductCategory category;
  final Quantity quantity;
  final Price price;
  final Description description;
  final DateTime manDate;
  final DateTime expDate;
  final DateTime createdAt;
  final DateTime updatedAt;

  Product._({
    String id,
    this.imageName,
    this.imageFile,
    this.productName,
    this.brandName,
    this.category,
    this.quantity,
    this.price,
    this.description,
    this.manDate,
    this.expDate,
    this.createdAt,
    this.updatedAt,
  }) : super(id);

  static Option<Product> create({
    String id,
    String imageName,
    String productName,
    String brandName,
    String category,
    int quantity,
    double price,
    String description,
    DateTime manDate,
    DateTime expDate,
    DateTime createdAt,
    DateTime updatedAt,
  }) {
    if ([
      id,
      imageName,
      productName,
      brandName,
      category,
      quantity,
      price,
      description,
      manDate,
      expDate,
      createdAt,
      updatedAt
    ].any((element) =>element == null)) return none();
    final imageNameObject = ImageName.create(imageName);
    if (imageNameObject.isLeft()) return none();
    final productNameObject = ProductName.create(productName);
    if (productNameObject.isLeft()) return none();
    final brandNameObject = ProductName.create(brandName);
    if (brandNameObject.isLeft()) return none();

    final categoryObject = category.toCategory();
    if (categoryObject.isNone()) return none();

    final quantityObject = Quantity.create(quantity);
    if (quantityObject.isLeft()) return none();

    final priceObject = Price.create(price);
    if (priceObject.isLeft()) return none();
	print(price);
	print(priceObject);

    final descriptionObject = Description.create(description);
    if (descriptionObject.isLeft()) return none();

    return some(Product._(
      id: id,
      imageName: imageNameObject.getOrElse(() => null),
      productName: productNameObject.getOrElse(() => null),
      brandName: brandNameObject.getOrElse(() => null),
      category: categoryObject.getOrElse(() => null),
      quantity: quantityObject.getOrElse(() => null),
      price: priceObject.getOrElse(() => null),
      description: descriptionObject.getOrElse(() => null),
      manDate: manDate,
      expDate: expDate,
      createdAt: createdAt,
      updatedAt: updatedAt,
    ));
  }

  static Option<Product> createForAdd({
    ImageName imageName,
    Uint8List imageFile,
    ProductName productName,
    ProductName brandName,
    ProductCategory category,
    Quantity quantity,
    Price price,
    Description description,
    DateTime manDate,
    DateTime expDate,
  }) {
    if ([
      imageName,
      imageFile,
      productName,
      brandName,
      category,
      quantity,
      price,
      description,
      manDate,
      expDate,
    ].any((element) => element == null)) return none();

    return some(Product._(
      imageName: imageName,
      imageFile: imageFile,
      productName: productName,
      brandName: brandName,
      category: category,
      quantity: quantity,
      price: price,
      description: description,
      manDate: manDate,
      expDate: expDate,
    ));
  }
}
