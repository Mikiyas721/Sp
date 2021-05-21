import 'package:dartz/dartz.dart';
import 'package:sp_web/common/entity.dart';
import 'package:sp_web/common/enums/employee_position.dart';
import 'package:sp_web/common/enums/employee_type.dart';
import 'package:sp_web/domain/value_objects/email.dart';
import 'package:sp_web/domain/value_objects/image_url.dart';
import 'package:sp_web/domain/value_objects/person_name.dart';
import 'package:sp_web/domain/value_objects/phone_number.dart';
import 'package:sp_web/domain/value_objects/salary.dart';

class Employee extends Entity {
  final String id;
  final Option<PersonName> firstName;
  final Option<PersonName> lastName;
  final Option<PhoneNumber> phoneNumber;
  final Option<Email> email;
  final EmployeePosition employeePosition;
  final Option<Salary> salary;
  final EmployeeType employeeType;
  final Option<ImageUrl> photoUrl;
  final Option<ImageUrl> docUrl;
  final DateTime createdAt;
  final DateTime updatedAt;

  Employee._({
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

  static Option<Employee> create({
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
      createdAt,
      updatedAt
    ].any((element) => element == null)) return none();
    if ([firstName, lastName, phoneNumber, email, salary, photoUrl, docUrl]
        .any((element) => element.isNone())) return none();
    return Some(Employee._(
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
    ));
  }
}
