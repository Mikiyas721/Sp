import 'package:sp_web/common/view_model.dart';

class LoginViewModel extends ViewModel {
  final String phoneNumber;
  final String phoneNumberError;
  final String password;
  final String passwordError;
  final bool hasSubmitted;
  final bool isLoading;

  LoginViewModel({
    this.phoneNumber,
    this.phoneNumberError,
    this.password,
    this.passwordError,
    this.hasSubmitted,
    this.isLoading,
  });

  @override
  List<Object> get props => [
        phoneNumber,
        phoneNumberError,
        password,
        passwordError,
        hasSubmitted,
        isLoading,
      ];
}
