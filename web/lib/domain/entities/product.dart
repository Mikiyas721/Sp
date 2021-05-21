import 'package:dartz/dartz.dart';
import 'package:sp_web/common/entity.dart';
import 'package:sp_web/domain/value_objects/description.dart';
import 'package:sp_web/domain/value_objects/product_name.dart';
import 'package:sp_web/domain/value_objects/quantity.dart';

class Product extends Entity {
  final String id;
  final Option<ProductName> productName;
  final Option<ProductName> brandName;
  final String category;
  final Option<Quantity> quantity;
  final Option<Description> description;
  final DateTime manDate;
  final DateTime expDate;
  final DateTime createdAt;
  final DateTime updatedAt;

  Product._({
    this.id,
    this.productName,
    this.brandName,
    this.category,
    this.quantity,
    this.description,
    this.manDate,
    this.expDate,
    this.createdAt,
    this.updatedAt,
  });

  static Option<Product> create({
    String id,
    Option<ProductName> productName,
    Option<ProductName> brandName,
    String category,
    Option<Quantity> quantity,
    Option<Description> description,
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
    if ([productName, brandName, quantity, description]
        .any((element) => element.isNone())) return none();
    return some(Product._(
      id: id,
      productName: productName,
      brandName: brandName,
      category: category,
      quantity: quantity,
      description: description,
      manDate: manDate,
      expDate: expDate,
      createdAt: createdAt,
      updatedAt: updatedAt,
    ));
  }
}
