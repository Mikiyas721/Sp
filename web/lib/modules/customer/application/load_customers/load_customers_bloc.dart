import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sp_web/common/bloc/bloc_helpers.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/customer/domain/entities/customer.dart';

part 'load_customers_event.dart';

part 'load_customers_state.dart';

part 'load_customers_bloc.freezed.dart';

class LoadCustomersBloc extends Bloc<LoadCustomersEvent, LoadCustomersState> {
  LoadCustomersBloc() : super(LoadCustomersState.initial());

  @override
  Stream<LoadCustomersState> mapEventToState(
    LoadCustomersEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
