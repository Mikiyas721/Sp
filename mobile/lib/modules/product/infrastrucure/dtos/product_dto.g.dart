// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) {
  return ProductDto(
    id: json['id'] as String,
    imageName: json['imageName'] as String,
    productName: json['productName'] as String,
    brandName: json['brandName'] as String,
    category: json['category'] as String,
    quantity: json['quantity'] as int,
    price: (json['price'] as num).toDouble(),
    description: json['description'] as String,
    manDate: DateTime.parse(json['manDate'] as String),
    expDate: DateTime.parse(json['expDate'] as String),
    createdAt: DateTime.parse(json['createdAt'] as String),
    updatedAt: DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$ProductDtoToJson(ProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageName': instance.imageName,
      'productName': instance.productName,
      'brandName': instance.brandName,
      'category': instance.category,
      'quantity': instance.quantity,
      'price': instance.price,
      'description': instance.description,
      'manDate': instance.manDate.toIso8601String(),
      'expDate': instance.expDate.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
