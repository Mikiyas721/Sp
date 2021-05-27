import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../common/entity.dart';

abstract class Dto<T> extends Equatable {
  String get id;

  @override
  List<Object> get props => [id];

  Option<T> toDomain();

  static Option<List<E>> toDomainList<E extends Entity, D extends Dto<E>>(
      List<D> dtoList) {
    List<E> domainList = [];
    for (D d in dtoList) {
      final result = d.toDomain();
      if (result.isNone()) return none();
      domainList.add(result.getOrElse(() => null));
    }
    return some(domainList);
  }
}

abstract class TimeStampedDto {
  DateTime get createdAt;

  DateTime get updatedAt;
}
