import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../common/dto.dart';
import '../../domain/entities/product.dart';
import '../../../../common/extensions.dart';

part 'product_dto.g.dart';

@JsonSerializable(nullable: false)
class ProductDto extends Dto<Product> implements TimeStampedDto {
  final String id;
  final String productName;
  final String brandName;
  final String category;
  final int quantity;
  final String description;
  final DateTime manDate;
  final DateTime expDate;
  final DateTime createdAt;
  final DateTime updatedAt;

  ProductDto({
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

  factory ProductDto.fromJson(Map<String, dynamic> map) =>
      _$ProductDtoFromJson(map);

  Map<String, dynamic> toJson() => _$ProductDtoToJson(this);

  @override
  Option<Product> toDomain() {
    return Product.create(
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
    );
  }

  static ProductDto fromDomain(Product product) {
    return ProductDto(
      id: product.id,
      productName: product.productName.name,
      brandName: product.brandName.name,
      category: product.category.getString().getOrElse(() => null),
      quantity: product.quantity.quantity,
      description: product.description.description,
      manDate: product.manDate,
      expDate: product.expDate,
      createdAt: product.createdAt,
      updatedAt: product.updatedAt,
    );
  }
}
