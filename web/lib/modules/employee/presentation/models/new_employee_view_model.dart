import 'package:sp_web/common/view_model.dart';

class NewEmployeeViewModel extends ViewModel {
  final String firstName;
  final String firstNameError;
  final String lastName;
  final String lastNameError;
  final String phoneNumber;
  final String phoneNumberError;
  final String email;
  final String emailError;
  final String employeePosition;
  final double salary;
  final String salaryError;
  final String employeeType;
  final String imageName;
  final String docName;
  final bool hasSubmitted;
  final bool isAdding;

  NewEmployeeViewModel({
    this.firstName,
    this.firstNameError,
    this.lastName,
    this.lastNameError,
    this.phoneNumber,
    this.phoneNumberError,
    this.email,
    this.emailError,
    this.employeePosition,
    this.salary,
    this.salaryError,
    this.employeeType,
    this.imageName,
    this.docName,
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
        employeePosition,
        salary,
        salaryError,
        employeeType,
        imageName,
        docName,
        hasSubmitted,
        isAdding
      ];
}
