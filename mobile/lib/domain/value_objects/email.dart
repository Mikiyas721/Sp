import 'package:dartz/dartz.dart';
import '../../common/failure.dart';

abstract class EmailFailure extends Failure {}

class InvalidEmailFailure extends EmailFailure {
  @override
  String get message => 'Invalid email address';
}

const emailRegExp = r''; //TODO Regex for email

class Email {
  //TODO email can be empty for employee
  final String email;

  Email._(this.email);

  static Either<EmailFailure, Email> create(String email) {
    final match = RegExp(emailRegExp).firstMatch(email);
    if (match == null) return left(InvalidEmailFailure());
    return right(Email._(email));
  }
}
