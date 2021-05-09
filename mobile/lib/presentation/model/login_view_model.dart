import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class LoginViewModel extends Equatable {
  final String phoneNo;
  final String phoneNoError;
  final String password;
  final String passwordError;
  final bool hasSubmitted;
  final bool isSigningIn;

  LoginViewModel({
    @required this.phoneNo,
    @required this.phoneNoError,
    @required this.password,
    @required this.passwordError,
    @required this.hasSubmitted,
    @required this.isSigningIn,
  });

  @override
  List<Object> get props => [
    phoneNo,
    phoneNoError,
    password,
    passwordError,
    hasSubmitted,
    isSigningIn
  ];
}
