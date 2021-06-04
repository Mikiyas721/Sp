import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sp_web/common/bloc/bloc_helpers.dart';
import 'package:sp_web/common/enums/product_category.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/product/domain/value_objects/description.dart';
import 'package:sp_web/modules/product/domain/value_objects/product_name.dart';
import 'package:sp_web/modules/product/domain/value_objects/quantity.dart';
import '../../../../common/extensions.dart';

part 'add_product_event.dart';

part 'add_product_state.dart';

part 'add_product_bloc.freezed.dart';

@injectable
class AddProductBloc extends Bloc<AddProductEvent, AddProductState> {
  AddProductBloc() : super(AddProductState.initial());

  @override
  Stream<AddProductState> mapEventToState(
    AddProductEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
