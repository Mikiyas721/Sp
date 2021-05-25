import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sp_web/common/dto.dart';
import 'package:sp_web/domain/entities/employee.dart';
import '../../common/extensions.dart';

part 'employee_dto.g.dart';

@JsonSerializable(nullable: false)
class EmployeeDto extends Dto<Employee> implements TimeStampedDto {
  final String id;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String email;
  final String employeePosition;
  final double salary;
  final String employeeType;
  final String photoUrl;
  final String docUrl;
  final DateTime createdAt;
  final DateTime updatedAt;

  EmployeeDto({
    this.id,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.email,
    this.employeePosition,
    this.salary,
    this.employeeType,
    this.photoUrl,
    this.docUrl,
    this.createdAt,
    this.updatedAt,
  });

  factory EmployeeDto.fromJson(Map<String, dynamic> map) =>
      _$EmployeeDtoFromJson(map);

  Map<String, dynamic> toJson() => _$EmployeeDtoToJson(this);

  @override
  Option<Employee> toDomain() {
    return Employee.create(
      id: id,
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
      email: email,
      employeePosition: employeePosition,
      salary: salary,
      employeeType: employeeType,
      photoUrl: photoUrl,
      docUrl: docUrl,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static EmployeeDto fromDomain(Employee employee) {
    return EmployeeDto(
      id: employee.id,
      firstName: employee.firstName.name,
      lastName: employee.lastName.name,
      phoneNumber: employee.phoneNumber.phoneNumber,
      email: employee.email.email,
      employeePosition:
          employee.employeePosition.getString().getOrElse(() => null),
      salary: employee.salary.salary,
      employeeType: employee.employeeType.getString().getOrElse(() => null),
      photoUrl: employee.photoUrl.imageUrl,
      docUrl: employee.docUrl.imageUrl,
      createdAt: employee.createdAt,
      updatedAt: employee.updatedAt,
    );
  }
}
