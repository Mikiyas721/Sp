import 'package:dartz/dartz.dart';
import 'package:sp_web/common/failure.dart';

abstract class DescriptionFailure extends Failure {}

class EmptyDescriptionFailure extends DescriptionFailure {
  @override
  String get message => 'Description is required';
}

class ShortDescriptionFailure extends DescriptionFailure {
  @override
  String get message => 'Description should be at least 50 characters long';
}

class LongDescriptionFailure extends DescriptionFailure {
  @override
  String get message => 'Description can not be more than 200s characters';
}

class Description {
  final String description;

  Description._(this.description);

  Either<DescriptionFailure, Description> create(String description) {
    if (description == null || description.isEmpty)
      return left(EmptyDescriptionFailure());
    if (description.length < 50) return left(ShortDescriptionFailure());
    if (description.length > 200) return left(LongDescriptionFailure());
    return right(Description._(description));
  }
}
