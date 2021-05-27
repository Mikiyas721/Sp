import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sp_web/common/bloc/bloc_helpers.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/product.dart';

part 'load_products_event.dart';

part 'load_products_state.dart';

part 'load_products_bloc.freezed.dart';

class LoadProductsBloc extends Bloc<LoadProductsEvent, LoadProductsState> {
  LoadProductsBloc() : super(LoadProductsState.initial());

  @override
  Stream<LoadProductsState> mapEventToState(
    LoadProductsEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
