import 'package:dartz/dartz.dart';
import 'package:sp_web/common/entity.dart';
import 'package:sp_web/domain/value_objects/email.dart';
import 'package:sp_web/domain/value_objects/image_url.dart';
import 'package:sp_web/domain/value_objects/person_name.dart';
import 'package:sp_web/domain/value_objects/phone_number.dart';

class Customer extends Entity {
  final String id;
  final Option<PersonName> firstName; //TODO possibly use employee entity object
  final Option<PhoneNumber> phoneNumber;
  final Option<Email> email;
  final Option<ImageUrl> photoUrl;
  final DateTime createdAt;
  final DateTime updatedAt;

  Customer._({
    this.id,
    this.firstName,
    this.phoneNumber,
    this.email,
    this.photoUrl,
    this.createdAt,
    this.updatedAt,
  });

  static Option<Customer> create({
    String id,
    Option<PersonName> firstName,
    Option<PhoneNumber> phoneNumber,
    Option<Email> email,
    Option<ImageUrl> photoUrl,
    DateTime createdAt,
    DateTime updatedAt,
  }) {
    if ([id, firstName, phoneNumber, email, photoUrl, createdAt, updatedAt]
        .any((element) => element == null)) return none();
    if ([firstName, phoneNumber, email, photoUrl]
        .any((element) => element.isNone())) return none();
    return Some(Customer._(
      id: id,
      firstName: firstName,
      phoneNumber: phoneNumber,
      email: email,
      photoUrl: photoUrl,
      createdAt: createdAt,
      updatedAt: updatedAt,
    ));
  }
}
