import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:sp_web/common/controller/controller.dart';
import 'package:sp_web/common/mixins/toast_mixin.dart';
import 'package:sp_web/injection.dart';
import 'package:sp_web/modules/employee/application/new_employee/new_employee_bloc.dart';
import 'package:sp_web/modules/employee/domain/entities/employee.dart';
import 'package:sp_web/modules/employee/domain/use_cases/create_employee.dart';
import 'package:sp_web/modules/employee/presentation/models/new_employee_view_model.dart';
import '../../../../common/extensions.dart';

class NewEmployeeController extends BlocViewModelController<NewEmployeeBloc,
    NewEmployeeEvent, NewEmployeeState, NewEmployeeViewModel> with ToastMixin {
  final BuildContext context;

  NewEmployeeController(this.context)
      : super(getIt.get<NewEmployeeBloc>(), true);

  @override
  NewEmployeeViewModel mapStateToViewModel(NewEmployeeState s) {
    return NewEmployeeViewModel(
      firstName: s.firstName.getOrElse(() => null)?.name,
      firstNameError: s.hasSubmitted
          ? s.firstName.fold((l) => l.message, (r) => null)
          : null,
      lastName: s.lastName.getOrElse(() => null)?.name,
      lastNameError: s.hasSubmitted
          ? s.lastName.fold((l) => l.message, (r) => null)
          : null,
      phoneNumber: s.phoneNumber.getOrElse(() => null)?.phoneNumber,
      phoneNumberError: s.hasSubmitted
          ? s.phoneNumber.fold((l) => l.message, (r) => null)
          : null,
      email: s.email.getOrElse(() => null)?.email,
      emailError:
          s.hasSubmitted ? s.email.fold((l) => l.message, (r) => null) : null,
      employeePosition: s.employeePosition
          .getOrElse(() => null)
          ?.getString()
          ?.getOrElse(() => null),
      salary: s.salary.getOrElse(() => null)?.salary,
      salaryError:
          s.hasSubmitted ? s.salary.fold((l) => l.message, (r) => null) : null,
      employeeType: s.employeeType
          .getOrElse(() => null)
          ?.getString()
          ?.getOrElse(() => null),
      imageName: s.imageName.getOrElse(() => null)?.imageName,
      hasSubmitted: s.hasSubmitted,
      isAdding: s.hasRequested,
    );
  }

  void onFirstName(String value) {
    bloc.add(NewEmployeeFirstNameChangedEvent(value));
  }

  void onLastName(String value) {
    bloc.add(NewEmployeeLastNameChangedEvent(value));
  }

  void onPhoneNumber(String value) {
    bloc.add(NewEmployeePhoneNumberChangedEvent(value));
  }

  void onEmail(String value) {
    bloc.add(NewEmployeeEmailChangedEvent(value));
  }

  void onEmployeePosition(String value) {
    bloc.add(NewEmployeeEmployeePositionChangedEvent(value));
  }

  void onSalary(String value) {
    bloc.add(NewEmployeeSalaryChangedEvent(value));
  }

  void onEmployeeType(String value) {
    bloc.add(NewEmployeeEmployeeTypeChangedEvent(value));
  }

  void onImage()async {
    Uint8List fromPickerBytes = await ImagePickerWeb.getImage(outputType: ImageType.bytes);
    bloc.add(NewEmployeeImageChangedEvent('${DateTime.now().toIso8601String().split('.')[0]}.jpg',fromPickerBytes));
  }

  void onAdd() {
    bloc.add(NewEmployeeHasSubmittedEvent());
    final employee = Employee.createForNew(
	imageName: bloc.state.imageName.getOrElse(() => null),
	imageFile: bloc.state.imageData.getOrElse(()=>null),
      firstName: bloc.state.firstName.getOrElse(() => null),
      lastName: bloc.state.lastName.getOrElse(() => null),
      phoneNumber: bloc.state.phoneNumber.getOrElse(() => null),
      email: bloc.state.email.getOrElse(() => null),
      employeePosition: bloc.state.employeePosition.getOrElse(() => null),
      salary: bloc.state.salary.getOrElse(() => null),
      employeeType: bloc.state.employeeType.getOrElse(() => null),      
    );
    employee.fold(() {
      toastError("Invalid Inputs");
    }, (a) async {
      bloc.add(NewEmployeeHasRequestedEvent());
      final response = await getIt.get<CreateEmployee>().execute(a);
      response.fold((l) {
        toastError(l.message);
        bloc.add(NewEmployeeRequestFailedEvent(l));
      }, (r) {
        toastSuccess("Successfully created employee");
        bloc.add(NewEmployeeRequestSucceedEvent());
      });
    });
  }
}
