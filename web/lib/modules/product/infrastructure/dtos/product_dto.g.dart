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
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$ProductDtoToJson(ProductDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['imageName'] = instance.imageName;
  val['productName'] = instance.productName;
  val['brandName'] = instance.brandName;
  val['category'] = instance.category;
  val['quantity'] = instance.quantity;
  val['price'] = instance.price;
  val['description'] = instance.description;
  val['manDate'] = instance.manDate.toIso8601String();
  val['expDate'] = instance.expDate.toIso8601String();
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  return val;
}
