import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:sp_web/common/bloc/bloc_helpers.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/domain/entities/admin.dart';

part 'load_admins_event.dart';

part 'load_admins_state.dart';

part 'load_admins_bloc.freezed.dart';

class LoadAdminsBloc extends Bloc<LoadAdminsEvent, LoadAdminsState> {
  LoadAdminsBloc() : super(LoadAdminsState.initial());

  @override
  Stream<LoadAdminsState> mapEventToState(
    LoadAdminsEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
