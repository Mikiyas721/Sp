import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';

abstract class EmailFailure extends Failure {}

class InvalidEmailFailure extends EmailFailure {
  @override
  String get message => 'Invalid email address';
}

const emailRegExp = r'';

class Email {//TODO email can be empty for employee
  final String email;

  Email._(this.email);

  Either<EmailFailure, Email> create(String email) {
    final match = RegExp(email);
    if (match == null) return left(InvalidEmailFailure());
    return right(Email._(email));
  }
}
