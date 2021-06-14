import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../common/bloc/bloc_helpers.dart';
import '../../../../common/failure.dart';
import '../../domain/entities/product.dart';

part 'load_by_category_event.dart';
part 'load_by_category_state.dart';
part 'load_by_category_bloc.freezed.dart';

@injectable
class LoadByCategoryBloc extends Bloc<LoadByCategoryEvent, LoadByCategoryState> {
  LoadByCategoryBloc() : super(LoadByCategoryState.initial());

  @override
  Stream<LoadByCategoryState> mapEventToState(
    LoadByCategoryEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
