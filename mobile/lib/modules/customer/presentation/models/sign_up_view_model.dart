import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class SignUpViewModel extends Equatable {
  final String name;
  final String nameError;
  final String phoneNumber;
  final String phoneNumberError;
  final String email;
  final String emailError;
  final String password;
  final String passwordError;
  final bool hasSubmitted;
  final bool isSigningIn;

  SignUpViewModel({
    @required this.name,
    @required this.nameError,
    @required this.phoneNumber,
    @required this.phoneNumberError,
    @required this.email,
    @required this.emailError,
    @required this.password,
    @required this.passwordError,
    @required this.hasSubmitted,
    @required this.isSigningIn,
  });

  @override
  List<Object> get props => [
        name,
        nameError,
        phoneNumber,
        phoneNumberError,
        email,
        emailError,
        password,
        passwordError,
        hasSubmitted,
        isSigningIn,
      ];
}
