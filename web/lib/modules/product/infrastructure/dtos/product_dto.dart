import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sp_web/common/dto.dart';
import 'package:sp_web/modules/product/domain/entities/product.dart';
import '../../../../common/extensions.dart';

part 'product_dto.g.dart';

@JsonSerializable(nullable: false)
class ProductDto extends Dto<Product> implements TimeStampedDto {
  @JsonKey(nullable: true,includeIfNull: false)final String id;
  final String imageName;
  final String productName;
  final String brandName;
  final String category;
  final int quantity;
  final double price;
  final String description;
  final DateTime manDate;
  final DateTime expDate;
  @JsonKey(nullable: true,includeIfNull: false)final DateTime createdAt;
  @JsonKey(nullable: true,includeIfNull: false)final DateTime updatedAt;

  ProductDto({
    this.id,
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
  });

  factory ProductDto.fromJson(Map<String, dynamic> map) =>
      _$ProductDtoFromJson(map);

  factory ProductDto.fromAvailableJson(Map<String, dynamic> map){  
    return ProductDto(
      id: map['id'] as String,
      imageName:map['product']['imageName'] as String,
      productName: map['product']['productName'] as String,
      brandName: map['product']['brandName'] as String,
      category: map['product']['category'] as String,
      quantity: map['quantity'] as int,
      price: map['price'] as double,
      description: map['product']['description'] as String,
      manDate: DateTime.parse(map['manDate'] as String),
      expDate: DateTime.parse(map['expDate'] as String),
      createdAt: DateTime.parse(map['createdAt'] as String),
      updatedAt: DateTime.parse(map['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() => _$ProductDtoToJson(this);

  @override
  Option<Product> toDomain() {
    return Product.create(
      id: id,
      imageName:imageName,
      productName: productName,
      brandName: brandName,
      category: category,
      quantity: quantity,
      price: price,
      description: description,
      manDate: manDate,
      expDate: expDate,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static ProductDto fromDomain(Product product) {
    return ProductDto(
      id: product.id,
      imageName:product.imageName.imageName,
      productName: product.productName.name,
      brandName: product.brandName.name,
      category: product.category.getString().getOrElse(() => null),
      quantity: product.quantity.quantity,
      price: product.price.price,
      description: product.description.description,
      manDate: product.manDate,
      expDate: product.expDate,
      createdAt: product.createdAt,
      updatedAt: product.updatedAt,
    );
  }
}
