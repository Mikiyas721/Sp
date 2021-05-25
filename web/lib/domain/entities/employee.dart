import 'package:dartz/dartz.dart';
import 'package:sp_web/common/entity.dart';
import 'package:sp_web/common/enums/employee_position.dart';
import 'package:sp_web/common/enums/employee_type.dart';
import 'package:sp_web/domain/value_objects/email.dart';
import 'package:sp_web/domain/value_objects/image_url.dart';
import 'package:sp_web/domain/value_objects/person_name.dart';
import 'package:sp_web/domain/value_objects/phone_number.dart';
import 'package:sp_web/domain/value_objects/salary.dart';
import '../../common/extensions.dart';

class Employee extends Entity {
  final String id;
  final PersonName firstName;
  final PersonName lastName;
  final PhoneNumber phoneNumber;
  final Email email;
  final EmployeePosition employeePosition;
  final Salary salary;
  final EmployeeType employeeType;
  final ImageUrl photoUrl;
  final ImageUrl docUrl;
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
    String firstName,
    String lastName,
    String phoneNumber,
    String email,
    String employeePosition,
    double salary,
    String employeeType,
    String photoUrl,
    String docUrl,
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

    final photoUrlObject = ImageUrl.create(photoUrl);
    if (photoUrlObject.isLeft()) return none();

    final docUrlObject = ImageUrl.create(docUrl);
    if (docUrlObject.isLeft()) return none();

    return Some(Employee._(
      id: id,
      firstName: firstNameObject.getOrElse(() => null),
      lastName: lastNameObject.getOrElse(() => null),
      phoneNumber: phoneNumberObject.getOrElse(() => null),
      email: emailObject.getOrElse(() => null),
      employeePosition: employeePositionObject.getOrElse(() => null),
      salary: salaryObject.getOrElse(() => null),
      employeeType: employeeTypeObject.getOrElse(() => null),
      photoUrl: photoUrlObject.getOrElse(() => null),
      docUrl: docUrlObject.getOrElse(() => null),
      createdAt: createdAt,
    ));
  }
}
