import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sp_web/common/bloc/bloc_helpers.dart';
import 'package:sp_web/common/enums/product_category.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/product/domain/entities/product.dart';
import '../../../../common/extensions.dart';

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
