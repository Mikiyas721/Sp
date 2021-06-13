import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:sp_client/common/domain/value_objects/image_name.dart';
import '../../../../common/entity.dart';
import '../../domain/value_objects/email.dart';
import '../value_objects/person_name.dart';
import '../value_objects/phone_number.dart';
import '../value_objects/password.dart';

class Customer extends Entity implements TimeStampedEntity {
  final ImageName imageName;
  final Uint8List imageFile;
  final PersonName name;
  final PhoneNumber phoneNumber;
  final Email email;
  final Password password;
  final DateTime createdAt;
  final DateTime updatedAt;

  Customer._({
    String id,
    this.imageName,
    this.imageFile,
    this.name,
    this.phoneNumber,
    this.email,
    this.password,
    this.createdAt,
    this.updatedAt,
  }) : super(id);

  static Option<Customer> create({
    String id,
    String imageName,
    String name,
    String phoneNumber,
    String email,
    String password,
    DateTime createdAt,
    DateTime updatedAt,
  }) {
    if ([
      id,
      imageName,
      name,
      phoneNumber,
      email,
      password,
      createdAt,
      updatedAt,
    ].any((element) => element == null)) return none();
    final nameObject = PersonName.create(name);
    if (nameObject.isLeft()) return none();

    final phoneNumberObject = PhoneNumber.create(phoneNumber);
    if (phoneNumberObject.isLeft()) return none();

    final emailObject = Email.create(email);
    if (emailObject.isLeft()) return none();

    final passwordObject = Password.create(password);
    if (passwordObject.isLeft()) return none();

    final imageNameObject = ImageName.create(imageName);
    if (imageNameObject.isLeft()) return none();

    return Some(Customer._(
      id: id,
      imageName: imageNameObject.getOrElse(() => null),
      name: nameObject.getOrElse(() => null),
      phoneNumber: phoneNumberObject.getOrElse(() => null),
      email: emailObject.getOrElse(() => null),
      password: passwordObject.getOrElse(() => null),
      createdAt: createdAt,
      updatedAt: updatedAt,
    ));
  }

  static Option<Customer> createForLogin({
    String phoneNumber,
    String password,
  }) {
    if ([
      phoneNumber,
      password,
    ].any((element) => element == null)) return none();

    final phoneNumberObject = PhoneNumber.create(phoneNumber);
    if (phoneNumberObject.isLeft()) return none();

    final passwordObject = Password.create(password);
    if (passwordObject.isLeft()) return none();

    return Some(Customer._(
      phoneNumber: phoneNumberObject.getOrElse(() => null),
      password: passwordObject.getOrElse(() => null),
    ));
  }
}
