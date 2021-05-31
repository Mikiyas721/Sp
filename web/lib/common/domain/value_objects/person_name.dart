import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';

abstract class PersonNameFailure extends Failure {}

class EmptyPersonNameFailure extends PersonNameFailure {
  @override
  String get message => 'Name is required';
}

class ShortPersonNameFailure extends PersonNameFailure {
  @override
  String get message => 'Name is too short';
}

class LongPersonNameFailure extends PersonNameFailure {
  @override
  String get message => 'Name is too long';
}

class InvalidPersonNameFailure extends PersonNameFailure {
  @override
  String get message => 'Invalid Name';
}

const regex = r'^[\d\s]+$';

class PersonName {
  final String name;

  PersonName._(this.name);

  static Either<PersonNameFailure, PersonName> create(String name) {
    if (name == null || name.isEmpty) return left(EmptyPersonNameFailure());
    if (name.length < 2) return left(ShortPersonNameFailure());
    if (name.length > 18) return left(LongPersonNameFailure());
    if (RegExp(regex).hasMatch(name)) return left(InvalidPersonNameFailure());
    return right(PersonName._(name));
  }
}
