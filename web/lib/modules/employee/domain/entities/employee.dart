import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:sp_web/common/domain/value_objects/email.dart';
import 'package:sp_web/common/entity.dart';
import 'package:sp_web/common/enums/employee_position.dart';
import 'package:sp_web/common/enums/employee_type.dart';
import 'package:sp_web/common/domain/value_objects/person_name.dart';
import 'package:sp_web/common/domain/value_objects/image_url.dart';
import 'package:sp_web/common/domain/value_objects/phone_number.dart';
import 'package:sp_web/modules/employee/domain/value_objects/salary.dart';
import '../../../../common/extensions.dart';

class Employee extends Entity implements TimeStampedEntity {
  final ImageName imageName;
  final Uint8List imageFile;
  final PersonName firstName;
  final PersonName lastName;
  final PhoneNumber phoneNumber;
  final Email email;
  final EmployeePosition employeePosition;
  final Salary salary;
  final EmployeeType employeeType;

  /*final ImageName docName;*/
  final DateTime createdAt;
  final DateTime updatedAt;

  Employee._({
    String id,
    this.imageName,
    this.imageFile,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.email,
    this.employeePosition,
    this.salary,
    this.employeeType,
    this.createdAt,
    this.updatedAt,
  }) : super(id);

  static Option<Employee> create({
    String id,
    String imageName,
    String firstName,
    String lastName,
    String phoneNumber,
    String email,
    String employeePosition,
    double salary,
    String employeeType,
    DateTime createdAt,
    DateTime updatedAt,
  }) {
    if ([
      id,
      imageName,
      firstName,
      lastName,
      phoneNumber,
      email,
      employeePosition,
      salary,
      employeeType,
      createdAt,
      updatedAt
    ].any((element) => element == null)) return none();
    final firstNameObject = PersonName.create(firstName);
    if (firstNameObject.isLeft()) return none();
    final lastNameObject = PersonName.create(lastName);
    if (lastNameObject.isLeft()) return none();

    final phoneNumberObject = PhoneNumber.create(phoneNumber);
    if (phoneNumberObject.isLeft()) return none();

    final emailObject = Email.create(email);
    if (emailObject.isLeft()) return none();

    final employeePositionObject = employeePosition.toEmployeePosition();
    if (employeePositionObject.isNone()) return none();

    final salaryObject = Salary.create(salary);
    if (salaryObject.isLeft()) return none();

    final employeeTypeObject = employeeType.toEmployeeType();
    if (employeeTypeObject.isNone()) return none();

    final imageNameObject = ImageName.create(imageName);
    if (imageNameObject.isLeft()) return none();

    return Some(Employee._(
      id: id,
      imageName: imageNameObject.getOrElse(() => null),
      firstName: firstNameObject.getOrElse(() => null),
      lastName: lastNameObject.getOrElse(() => null),
      phoneNumber: phoneNumberObject.getOrElse(() => null),
      email: emailObject.getOrElse(() => null),
      employeePosition: employeePositionObject.getOrElse(() => null),
      salary: salaryObject.getOrElse(() => null),
      employeeType: employeeTypeObject.getOrElse(() => null),
      createdAt: createdAt,
    ));
  }

  static Option<Employee> createForNew({
    ImageName imageName,
    Uint8List imageFile,
    PersonName firstName,
    PersonName lastName,
    PhoneNumber phoneNumber,
    Email email,
    EmployeePosition employeePosition,
    Salary salary,
    EmployeeType employeeType,
    ImageName docName,
  }) {
    if ([
      imageName,
      imageFile,
      firstName,
      lastName,
      phoneNumber,
      email,
      employeePosition,
      salary,
      employeeType,
      docName,
    ].any((element) => element == null)) return none();

    return Some(Employee._(
      imageName: imageName,
      imageFile: imageFile,
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
      email: email,
      employeePosition: employeePosition,
      salary: salary,
      employeeType: employeeType,
    ));
  }
}
