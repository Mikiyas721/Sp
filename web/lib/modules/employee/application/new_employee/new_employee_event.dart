part of 'new_employee_bloc.dart';

abstract class NewEmployeeEvent extends BlocEvent<NewEmployeeState> {}

class NewEmployeeFirstNameChangedEvent extends NewEmployeeEvent {
  final String firstName;

  NewEmployeeFirstNameChangedEvent(this.firstName);

  @override
  Stream<NewEmployeeState> handle(NewEmployeeState currentState) async* {
    yield currentState.copyWith(
      firstName: PersonName.create(firstName),
    );
  }
}

class NewEmployeeLastNameChangedEvent extends NewEmployeeEvent {
  final String lastName;

  NewEmployeeLastNameChangedEvent(this.lastName);

  @override
  Stream<NewEmployeeState> handle(NewEmployeeState currentState) async* {
    yield currentState.copyWith(
      lastName: PersonName.create(lastName),
    );
  }
}

class NewEmployeePhoneNumberChangedEvent extends NewEmployeeEvent {
  final String phoneNumber;

  NewEmployeePhoneNumberChangedEvent(this.phoneNumber);

  @override
  Stream<NewEmployeeState> handle(NewEmployeeState currentState) async* {
    yield currentState.copyWith(
      phoneNumber: PhoneNumber.create(phoneNumber),
    );
  }
}

class NewEmployeeEmailChangedEvent extends NewEmployeeEvent {
  final String email;

  NewEmployeeEmailChangedEvent(this.email);

  @override
  Stream<NewEmployeeState> handle(NewEmployeeState currentState) async* {
    yield currentState.copyWith(
      email: Email.create(email),
    );
  }
}

class NewEmployeeEmployeePositionChangedEvent extends NewEmployeeEvent {
  final EmployeePosition employeePosition;

  NewEmployeeEmployeePositionChangedEvent(this.employeePosition);

  @override
  Stream<NewEmployeeState> handle(NewEmployeeState currentState) async* {
    yield currentState.copyWith(
      employeePosition: Failure.getOption(employeePosition),
    );
  }
}

class NewEmployeeSalaryChangedEvent extends NewEmployeeEvent {
  final String salary;

  NewEmployeeSalaryChangedEvent(this.salary);

  @override
  Stream<NewEmployeeState> handle(NewEmployeeState currentState) async* {
    yield currentState.copyWith(
      salary: Salary.createFromString(salary),
    );
  }
}

class NewEmployeeEmployeeTypeChangedEvent extends NewEmployeeEvent {
  final EmployeeType employeeType;

  NewEmployeeEmployeeTypeChangedEvent(this.employeeType);

  @override
  Stream<NewEmployeeState> handle(NewEmployeeState currentState) async* {
    yield currentState.copyWith(
      employeeType: Failure.getOption(employeeType),
    );
  }
}

class NewEmployeePhotoUrlChangedEvent extends NewEmployeeEvent {
  final String photoUrl;

  NewEmployeePhotoUrlChangedEvent(this.photoUrl);

  @override
  Stream<NewEmployeeState> handle(NewEmployeeState currentState) async* {
    yield currentState.copyWith(
      photoUrl: Failure.getOption(photoUrl),
    );
  }
}

class NewEmployeeDocUrlChangedEvent extends NewEmployeeEvent {
  final String docUrl;

  NewEmployeeDocUrlChangedEvent(this.docUrl);

  @override
  Stream<NewEmployeeState> handle(NewEmployeeState currentState) async* {
    yield currentState.copyWith(
      docUrl: Failure.getOption(docUrl),
    );
  }
}

class NewEmployeeHasSubmittedEvent extends NewEmployeeEvent {
  @override
  Stream<NewEmployeeState> handle(NewEmployeeState currentState) async* {
    yield currentState.copyWith(
      hasSubmitted: true,
    );
  }
}

class NewEmployeeHasRequestedEvent extends NewEmployeeEvent {
  @override
  Stream<NewEmployeeState> handle(NewEmployeeState currentState) async* {
    yield currentState.copyWith(
      hasRequested: true,
    );
  }
}

class NewEmployeeRequestFailedEvent extends NewEmployeeEvent {
  final Failure requestFailure;

  NewEmployeeRequestFailedEvent(this.requestFailure);

  @override
  Stream<NewEmployeeState> handle(NewEmployeeState currentState) async* {
    yield currentState.copyWith(
      requestFailure: Failure.getOption(requestFailure),
      hasRequested: false,
    );
  }
}

class NewEmployeeRequestSucceedEvent extends NewEmployeeEvent {
  @override
  Stream<NewEmployeeState> handle(NewEmployeeState currentState) async* {
    yield currentState.copyWith(
      firstName: PersonName.create(''),
      lastName: PersonName.create(''),
      phoneNumber: PhoneNumber.create(''),
      email: Email.create(''),
      employeePosition: none(),
      salary: Salary.create(0),
      employeeType: none(),
      photoUrl: none(),
      docUrl: none(),
      requestFailure: none(),
      hasSubmitted: false,
      hasRequested: false,
      hasCompletedRequest: true,
    );
  }
}
