import 'package:dartz/dartz.dart';

abstract class Failure {
  String get message;

  static Option<T> getOption<T>(T object) {
    return object == null ? none() : some(object);
  }
}

class SimpleFailure extends Failure {
  final String message;

  SimpleFailure(this.message);
}
