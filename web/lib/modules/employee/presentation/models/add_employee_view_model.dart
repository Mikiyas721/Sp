import 'package:sp_web/common/view_model.dart';

class AddEmployeeViewModel extends ViewModel {
  final String firstName;
  final String firstNameError;
  final String lastName;
  final String lastNameError;
  final String phoneNumber;
  final String phoneNumberError;
  final String email;
  final String emailError;
  final DateTime dob;
  final String imageUrl;
  final String fileUrl;
  final bool hasSubmitted;
  final bool isAdding;

  AddEmployeeViewModel({
    this.firstName,
    this.firstNameError,
    this.lastName,
    this.lastNameError,
    this.phoneNumber,
    this.phoneNumberError,
    this.email,
    this.emailError,
    this.dob,
    this.imageUrl,
    this.fileUrl,
    this.hasSubmitted,
    this.isAdding,
  });

  @override
  List<Object> get props => [
        firstName,
        firstNameError,
        lastName,
        lastNameError,
        phoneNumber,
        phoneNumberError,
        email,
        emailError,
        dob,
        imageUrl,
        fileUrl,
        hasSubmitted,
        isAdding
      ];
}
