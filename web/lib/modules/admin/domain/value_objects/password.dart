import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';

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
      "Weak password";
}

const passwordRegExp =
    r'^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[*.!@$%^&(){}[]:;<>,.?/~_+-=|\]).{6,12}$';

class Password {
  final String password;

  Password._(this.password);

  static Either<PasswordFailure, Password> create(String password) {
    /*if (password.length < 6) return left(ShortPasswordFailure());
    if (password.length > 12) return left(LongPasswordFailure());
    if (!RegExp(passwordRegExp).hasMatch(password))
      return left(WeakPasswordFailure());*/
    return right(Password._(password));
  }
}
