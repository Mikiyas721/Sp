import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sp_web/common/bloc/bloc_helpers.dart';
import 'package:sp_web/common/domain/value_objects/email.dart';
import 'package:sp_web/common/enums/employee_position.dart';
import 'package:sp_web/common/enums/employee_type.dart';
import 'package:sp_web/common/failure.dart';
import 'package:sp_web/common/domain/value_objects/person_name.dart';
import 'package:sp_web/common/domain/value_objects/phone_number.dart';
import 'package:sp_web/modules/employee/domain/value_objects/salary.dart';

part 'new_employee_event.dart';

part 'new_employee_state.dart';

part 'new_employee_bloc.freezed.dart';

class NewEmployeeBloc extends Bloc<NewEmployeeEvent, NewEmployeeState> {
  NewEmployeeBloc() : super(NewEmployeeState.initial());

  @override
  Stream<NewEmployeeState> mapEventToState(NewEmployeeEvent event) async* {
    yield* event.handle(state);
  }
}
