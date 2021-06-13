import 'package:dartz/dartz.dart';
import 'package:sp_client/common/domain/value_objects/image_name.dart';
import 'package:sp_client/modules/product/domain/value_objects/price.dart';
import '../../../../common/entity.dart';
import '../../../../common/enums/product_category.dart';
import '../value_objects/description.dart';
import '../value_objects/product_name.dart';
import '../value_objects/quantity.dart';
import '../../../../common/extensions.dart';

class Product extends Entity implements TimeStampedEntity {
  final ImageName imageName;
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
    ].any((element) => element == null)) return none();
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
}
