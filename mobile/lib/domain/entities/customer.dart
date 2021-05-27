import 'package:dartz/dartz.dart';
import '../../common/entity.dart';
import '../value_objects/email.dart';
import '../value_objects/image_url.dart';
import '../value_objects/person_name.dart';
import '../value_objects/phone_number.dart';

class Customer extends Entity {
  final String id;
  final PersonName name;
  final PhoneNumber phoneNumber;
  final Email email;
  final ImageUrl photoUrl;
  final DateTime createdAt;
  final DateTime updatedAt;

  Customer._({
    this.id,
    this.name,
    this.phoneNumber,
    this.email,
    this.photoUrl,
    this.createdAt,
    this.updatedAt,
  });

  static Option<Customer> create({
    String id,
    String name,
    String phoneNumber,
    String email,
    String photoUrl,
    DateTime createdAt,
    DateTime updatedAt,
  }) {
    if ([id, name, phoneNumber, email, photoUrl, createdAt, updatedAt]
        .any((element) => element == null)) return none();
    final nameObject = PersonName.create(name);
    if (nameObject.isLeft()) return none();

    final phoneNumberObject = PhoneNumber.create(phoneNumber);
    if (phoneNumberObject.isLeft()) return none();

    final emailObject = Email.create(email);
    if (emailObject.isLeft()) return none();

    final photoUrlObject = ImageUrl.create(photoUrl);
    if (photoUrlObject.isLeft()) return none();

    return Some(Customer._(
      id: id,
      name: nameObject.getOrElse(() => null),
      phoneNumber: phoneNumberObject.getOrElse(() => null),
      email: emailObject.getOrElse(() => null),
      photoUrl: photoUrlObject.getOrElse(() => null),
      createdAt: createdAt,
      updatedAt: updatedAt,
    ));
  }
}