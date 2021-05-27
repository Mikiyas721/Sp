import 'package:dartz/dartz.dart';
import 'package:sp_web/common/entity.dart';
import 'package:sp_web/common/enums/product_category.dart';
import 'package:sp_web/domain/value_objects/description.dart';
import 'package:sp_web/domain/value_objects/product_name.dart';
import 'package:sp_web/domain/value_objects/quantity.dart';
import '../../common/extensions.dart';

class Product extends Entity implements TimeStampedEntity {
  final ProductName productName;
  final ProductName brandName;
  final ProductCategory category;
  final Quantity quantity;
  final Description description;
  final DateTime manDate;
  final DateTime expDate;
  final DateTime createdAt;
  final DateTime updatedAt;

  Product._({
    String id,
    this.productName,
    this.brandName,
    this.category,
    this.quantity,
    this.description,
    this.manDate,
    this.expDate,
    this.createdAt,
    this.updatedAt,
  }) : super(id);

  static Option<Product> create({
    String id,
    String productName,
    String brandName,
    String category,
    int quantity,
    String description,
    DateTime manDate,
    DateTime expDate,
    DateTime createdAt,
    DateTime updatedAt,
  }) {
    if ([
      id,
      productName,
      brandName,
      category,
      quantity,
      description,
      manDate,
      expDate,
      createdAt,
      updatedAt
    ].any((element) => element == null)) return none();
    final productNameObject = ProductName.create(productName);
    if (productNameObject.isLeft()) return none();
    final brandNameObject = ProductName.create(brandName);
    if (brandNameObject.isLeft()) return none();

    final categoryObject = category.toCategory();
    if (categoryObject.isNone()) return none();

    final quantityObject = Quantity.create(quantity);
    if (quantityObject.isLeft()) return none();

    final descriptionObject = Description.create(description);
    if (descriptionObject.isLeft()) return none();

    return some(Product._(
      id: id,
      productName: productNameObject.getOrElse(() => null),
      brandName: brandNameObject.getOrElse(() => null),
      category: categoryObject.getOrElse(() => null),
      quantity: quantityObject.getOrElse(() => null),
      description: descriptionObject.getOrElse(() => null),
      manDate: manDate,
      expDate: expDate,
      createdAt: createdAt,
      updatedAt: updatedAt,
    ));
  }
}
