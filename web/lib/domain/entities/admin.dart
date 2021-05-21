import 'package:dartz/dartz.dart';
import 'package:sp_web/common/entity.dart';
import 'package:sp_web/common/enums/admin_privilege_type.dart';
import 'package:sp_web/common/enums/employee_position.dart';
import 'package:sp_web/common/enums/employee_type.dart';
import 'package:sp_web/domain/value_objects/email.dart';
import 'package:sp_web/domain/value_objects/image_url.dart';
import 'package:sp_web/domain/value_objects/person_name.dart';
import 'package:sp_web/domain/value_objects/phone_number.dart';
import 'package:sp_web/domain/value_objects/salary.dart';

class Admin extends Entity {
  final String id;
  final Option<PersonName> firstName; //TODO possibly use employee entity object
  final Option<PersonName> lastName;
  final Option<PhoneNumber> phoneNumber;
  final Option<Email> email;
  final EmployeePosition employeePosition;
  final Option<Salary> salary;
  final EmployeeType employeeType;
  final Option<ImageUrl> photoUrl;
  final Option<ImageUrl> docUrl;
  final AdminPrivilegeType privilegeType;
  final DateTime createdAt;
  final DateTime updatedAt;

  Admin._({
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
    this.privilegeType,
    this.createdAt,
    this.updatedAt,
  });

  static Option<Admin> create({
    String id,
    Option<PersonName> firstName,
    Option<PersonName> lastName,
    Option<PhoneNumber> phoneNumber,
    Option<Email> email,
    EmployeePosition employeePosition,
    Option<Salary> salary,
    EmployeeType employeeType,
    Option<ImageUrl> photoUrl,
    Option<ImageUrl> docUrl,
    AdminPrivilegeType privilegeType,
    DateTime createdAt,
    DateTime updatedAt,
  }) {
    if ([
      id,
      firstName,
      lastName,
      phoneNumber,
      email,
      employeePosition,
      salary,
      employeeType,
      photoUrl,
      docUrl,
      privilegeType,
      createdAt,
      updatedAt
    ].any((element) => element == null)) return none();
    if ([firstName, lastName, phoneNumber, email, salary, photoUrl, docUrl]
        .any((element) => element.isNone())) return none();
    return Some(Admin._(
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
      privilegeType: privilegeType,
      createdAt: createdAt,
      updatedAt: updatedAt,
    ));
  }
}
