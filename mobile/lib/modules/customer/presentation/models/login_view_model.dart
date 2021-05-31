import 'package:flutter/foundation.dart';
import 'package:equatable/equatable.dart';
import '../../../../common/view_model.dart';

class LoginViewModel extends ViewModel {
  final String phoneNumber;
  final String phoneNumberError;
  final String password;
  final String passwordError;
  final bool hasSubmitted;
  final bool isLoading;

  LoginViewModel({
    @required this.phoneNumber,
    @required this.phoneNumberError,
    @required this.password,
    @required this.passwordError,
    @required this.hasSubmitted,
    @required this.isLoading,
  });

  @override
  List<Object> get props => [
    phoneNumber,
    phoneNumberError,
    password,
    passwordError,
    hasSubmitted,
    isLoading
  ];
}
