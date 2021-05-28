part of 'login_bloc.dart';

abstract class LoginEvent extends BlocEvent<LoginState> {}

class LoginPhoneNumberChangedEvent extends LoginEvent {
  final String phoneNumber;

  LoginPhoneNumberChangedEvent(this.phoneNumber);

  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(
      phoneNumber: PhoneNumber.create(phoneNumber),
    );
  }
}

class LoginPasswordChangedEvent extends LoginEvent {
  final String password;

  LoginPasswordChangedEvent(this.password);

  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(
      password: Password.create(password),
    );
  }
}

class LoginSubmittedEvent extends LoginEvent {
  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(
      hasSubmitted: true,
    );
  }
}

class LoginRequestedEvent extends LoginEvent {
  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(
      hasRequested: true,
    );
  }
}

class LoginRequestFailedEvent extends LoginEvent {
  final Failure loginFailure;

  LoginRequestFailedEvent(this.loginFailure);

  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(
      requestFailure: Failure.getOption(loginFailure),
      hasRequested: false,
    );
  }
}

class LoginRequestSucceededEvent extends LoginEvent {
  final Admin admin;

  LoginRequestSucceededEvent(this.admin);
  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(
      requestFailure: none(),
      admin:Failure.getOption(admin),
      hasRequested: false,
    );
  }
}
