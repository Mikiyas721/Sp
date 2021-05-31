import 'package:dartz/dartz.dart';
import 'package:sp_web/common/entity.dart';
import 'package:sp_web/common/enums/admin_privilege_type.dart';
import 'package:sp_web/common/domain/value_objects/phone_number.dart';
import 'package:sp_web/modules/admin/domain/value_objects/password.dart';
import '../../../../common/extensions.dart';

class Admin extends Entity {
  final PhoneNumber phoneNumber;
  final Password password;
  final AdminPrivilegeType privilegeType;
  final DateTime createdAt;
  final DateTime updatedAt;

  Admin._({
    String id,
    this.phoneNumber,
    this.password,
    this.privilegeType,
    this.createdAt,
    this.updatedAt,
  }):super(id);

  static Option<Admin> create({
    String id,
    String phoneNumber,
    String password,
    String privilegeType,
    DateTime createdAt,
    DateTime updatedAt,
  }) {
    if ([
      id,
      phoneNumber,
      password,
      privilegeType,
      createdAt,
      updatedAt
    ].any((element) => element == null)) return none();

    final phoneNumberObject = PhoneNumber.create(phoneNumber);
    if (phoneNumberObject.isLeft()) return none();

    final passwordObject = Password.create(password);
    if (passwordObject.isLeft()) return none();

    final privilegeTypeObject = privilegeType.toAdminPrivilegeType();
    if (privilegeTypeObject.isNone()) return none();

    return Some(Admin._(
      id: id,
      phoneNumber: phoneNumberObject.getOrElse(() => null),
      password: passwordObject.getOrElse(() => null),
      privilegeType: privilegeTypeObject.getOrElse(() => null),
      createdAt: createdAt,
      updatedAt: updatedAt,
    ));
  }
  static Option<Admin> createForLogin({
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

    return Some(Admin._(
      phoneNumber: phoneNumberObject.getOrElse(() => null),
      password: passwordObject.getOrElse(() => null),
    ));
  }
}
