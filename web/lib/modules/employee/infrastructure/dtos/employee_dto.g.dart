// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeeDto _$EmployeeDtoFromJson(Map<String, dynamic> json) {
  return EmployeeDto(
    id: json['id'] as String,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    phoneNumber: json['phoneNumber'] as String,
    email: json['email'] as String,
    employeePosition: json['employeePosition'] as String,
    salary: (json['salary'] as num).toDouble(),
    employeeType: json['employeeType'] as String,
    imageName: json['imageName'] as String,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$EmployeeDtoToJson(EmployeeDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['imageName'] = instance.imageName;
  val['firstName'] = instance.firstName;
  val['lastName'] = instance.lastName;
  val['phoneNumber'] = instance.phoneNumber;
  val['email'] = instance.email;
  val['employeePosition'] = instance.employeePosition;
  val['salary'] = instance.salary;
  val['employeeType'] = instance.employeeType;
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  return val;
}
