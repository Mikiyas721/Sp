import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class Dto<T> extends Equatable {
  String get id;

  @override
  List<Object> get props => [id];

  Option<T> toDomain();
}
abstract class TimeStampedDto {
  DateTime get createdAt;

  DateTime get updatedAt;
}