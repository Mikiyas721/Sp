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
    photoUrl: json['photoUrl'] as String,
    docUrl: json['docUrl'] as String,
    createdAt: DateTime.parse(json['createdAt'] as String),
    updatedAt: DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$EmployeeDtoToJson(EmployeeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'employeePosition': instance.employeePosition,
      'salary': instance.salary,
      'employeeType': instance.employeeType,
      'photoUrl': instance.photoUrl,
      'docUrl': instance.docUrl,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
