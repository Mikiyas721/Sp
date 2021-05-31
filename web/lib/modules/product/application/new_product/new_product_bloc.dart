import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:sp_web/common/bloc/bloc_helpers.dart';
import 'package:sp_web/common/enums/product_category.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/product/domain/value_objects/description.dart';
import 'package:sp_web/modules/product/domain/value_objects/product_name.dart';
import 'package:sp_web/modules/product/domain/value_objects/quantity.dart';

part 'new_product_event.dart';
part 'new_product_state.dart';

part 'new_product_bloc.freezed.dart';

class NewProductBloc extends Bloc<NewProductEvent, NewProductState> {
  NewProductBloc() : super(NewProductState.initial());

  @override
  Stream<NewProductState> mapEventToState(
    NewProductEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
