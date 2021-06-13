import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../common/bloc/bloc_helpers.dart';
import '../../../../common/failure.dart';
import '../../domain/entities/product.dart';

part 'load_products_event.dart';
part 'load_products_state.dart';
part 'load_products_bloc.freezed.dart';

@injectable
class LoadProductsBloc extends Bloc<LoadProductsEvent, LoadProductsState> {
  LoadProductsBloc() : super(LoadProductsState.initial());

  @override
  Stream<LoadProductsState> mapEventToState(
    LoadProductsEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
