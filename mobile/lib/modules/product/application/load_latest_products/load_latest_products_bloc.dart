import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../common/bloc/bloc_helpers.dart';
import '../../../../common/failure.dart';
import '../../domain/entities/product.dart';

part 'load_latest_products_event.dart';
part 'load_latest_products_state.dart';
part 'load_latest_products_bloc.freezed.dart';

@injectable
class LoadLatestProductsBloc extends Bloc<LoadLatestProductsEvent, LoadLatestProductsState> {
  LoadLatestProductsBloc() : super(LoadLatestProductsState.initial());

  @override
  Stream<LoadLatestProductsState> mapEventToState(
    LoadLatestProductsEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
