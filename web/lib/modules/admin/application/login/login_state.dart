part of 'login_bloc.dart';

@freezed
abstract class LoginState extends BlocState with _$LoginState {
  factory LoginState({
    Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
    Either<PasswordFailure, Password> password,
    Option<Failure> requestFailure,
    Option<Admin> admin,
    bool hasSubmitted,
    bool hasRequested,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        phoneNumber: PhoneNumber.create(""),
        password: Password.create(""),
        requestFailure: none(),
        admin: none(),
        hasSubmitted: false,
        hasRequested: false,
      );
}
