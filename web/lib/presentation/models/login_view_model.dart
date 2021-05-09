import 'package:equatable/equatable.dart';

class LoginViewModel extends Equatable {
  final String email;
  final String emailError;
  final String password;
  final String passwordError;
  final bool hasSubmitted;
  final bool isLoading;

  LoginViewModel({
    this.email,
    this.emailError,
    this.password,
    this.passwordError,
    this.hasSubmitted,
    this.isLoading,
  });

  @override
  List<Object> get props => [
        email,
        emailError,
        password,
        passwordError,
        hasSubmitted,
        isLoading,
      ];
}