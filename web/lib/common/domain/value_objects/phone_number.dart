import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';

abstract class PhoneNumberFailure extends Failure {}

class InvalidPhoneNumberFailure extends PhoneNumberFailure {
  @override
  String get message => "Invalid Phone Number";
}

const ethiopianPhoneNumberRegExp = r'^(\+?2510?9|0?9)([0-9]{8})$';

class PhoneNumber {
  final String phoneNumber;

  PhoneNumber._(this.phoneNumber);

  static Either<PhoneNumberFailure, PhoneNumber> create(String phoneNumber) {
    final match = RegExp(ethiopianPhoneNumberRegExp).firstMatch(phoneNumber);
    if (match == null)
      return left(InvalidPhoneNumberFailure());
    return right(PhoneNumber._(phoneNumber));
  }
}