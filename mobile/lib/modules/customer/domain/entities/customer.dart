import 'package:dartz/dartz.dart';
import '../../../../common/entity.dart';
import '../../domain/value_objects/email.dart';
import '../../../../domain/value_objects/image_url.dart';
import '../value_objects/person_name.dart';
import '../value_objects/phone_number.dart';
import '../value_objects/password.dart';

class Customer extends Entity implements TimeStampedEntity {
  final PersonName name;
  final PhoneNumber phoneNumber;
  final Email email;
  final Password password;
  final ImageUrl photoUrl;
  final DateTime createdAt;
  final DateTime updatedAt;

  Customer._({
    String id,
    this.name,
    this.phoneNumber,
    this.email,
    this.password,
    this.photoUrl,
    this.createdAt,
    this.updatedAt,
  }):super(id);

  static Option<Customer> create({
    String id,
    String name,
    String phoneNumber,
    String email,
    String password,
    String photoUrl,
    DateTime createdAt,
    DateTime updatedAt,
  }) {
    if ([id, name, phoneNumber, email, password, photoUrl, createdAt, updatedAt]
        .any((element) => element == null)) return none();
    final nameObject = PersonName.create(name);
    if (nameObject.isLeft()) return none();

    final phoneNumberObject = PhoneNumber.create(phoneNumber);
    if (phoneNumberObject.isLeft()) return none();

    final emailObject = Email.create(email);
    if (emailObject.isLeft()) return none();

    final passwordObject = Password.create(password);
    if(passwordObject.isLeft()) return none();

    final photoUrlObject = ImageUrl.create(photoUrl);
    if (photoUrlObject.isLeft()) return none();

    return Some(Customer._(
      id: id,
      name: nameObject.getOrElse(() => null),
      phoneNumber: phoneNumberObject.getOrElse(() => null),
      email: emailObject.getOrElse(() => null),
      password: passwordObject.getOrElse(() => null),
      photoUrl: photoUrlObject.getOrElse(() => null),
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
