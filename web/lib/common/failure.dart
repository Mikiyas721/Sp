import 'package:dartz/dartz.dart';

abstract class Failure {
  String get message;

  static Option<T> getOption<T>(T object) {
    return object == null ? none() : some(object);
  }

  static Option<Failure> getFailureOption(Failure failure) {
    return getOption<Failure>(failure);
  }
}

class SimpleFailure extends Failure {
  final String message;

  SimpleFailure(this.message);
}
