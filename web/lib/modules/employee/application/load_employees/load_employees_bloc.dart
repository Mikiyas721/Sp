import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:sp_web/common/bloc/bloc_helpers.dart';
import 'package:sp_web/common/enums/employee_position.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/modules/employee/domain/entities/employee.dart';

part 'load_employees_event.dart';

part 'load_employees_state.dart';

part 'load_employees_bloc.freezed.dart';

class LoadEmployeesBloc extends Bloc<LoadEmployeesEvent, LoadEmployeesState> {
  LoadEmployeesBloc() : super(LoadEmployeesState.initial());

  @override
  Stream<LoadEmployeesState> mapEventToState(
    LoadEmployeesEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
