// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminDto _$AdminDtoFromJson(Map<String, dynamic> json) {
  return AdminDto(
    id: json['id'] as String,
    phoneNumber: json['phoneNumber'] as String,
    password: json['password'] as String,
    privilegeType: json['privilegeType'] as String,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$AdminDtoToJson(AdminDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['phoneNumber'] = instance.phoneNumber;
  val['password'] = instance.password;
  writeNotNull('privilegeType', instance.privilegeType);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  return val;
}
