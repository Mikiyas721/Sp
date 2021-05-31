import 'package:dartz/dartz.dart';
import '../../../../common/failure.dart';

abstract class PasswordFailure extends Failure {}

class ShortPasswordFailure extends PasswordFailure {
  @override
  String get message => "Password must be at least 6 characters long";
}

class LongPasswordFailure extends PasswordFailure {
  @override
  String get message => "Password can not be more than 12 characters";
}

class WeakPasswordFailure extends PasswordFailure {
  @override
  String get message =>
      "Password must contain combination of uppercase, lowercase and special characters";
}

const passwordRegExp = r'';

class Password {
  final String password;

  Password._(this.password);

  static Either<PasswordFailure, Password> create(String password) {
    if (password.length < 6) left(ShortPasswordFailure());
    if (password.length > 12) left(LongPasswordFailure());
    if (!RegExp(passwordRegExp).hasMatch(password))
      return left(WeakPasswordFailure());
    return right(Password._(password));
  }
}
