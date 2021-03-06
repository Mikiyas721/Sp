part of 'new_employee_bloc.dart';

@freezed
abstract class NewEmployeeState extends BlocState with _$NewEmployeeState {
  factory NewEmployeeState({
    Either<PersonNameFailure, PersonName> firstName,
    Either<PersonNameFailure, PersonName> lastName,
    Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
    Either<EmailFailure, Email> email,
    Option<EmployeePosition> employeePosition,
    Either<SalaryFailure, Salary> salary,
    Option<EmployeeType> employeeType,
    Either<ImageNameFailure, ImageName> imageName,
    Option<Uint8List> imageData,
    Option<Failure> requestFailure,
    bool hasSubmitted,
    bool hasRequested,
    bool hasCompletedRequest,
  }) = _NewEmployeeState;

  factory NewEmployeeState.initial() => NewEmployeeState(
        firstName: PersonName.create(''),
        lastName: PersonName.create(''),
        phoneNumber: PhoneNumber.create(''),
        email: Email.create(''),
        employeePosition: none(),
        salary: Salary.create(0),
        employeeType: none(),
        imageName: ImageName.create(''),
        imageData: none(),
        requestFailure: none(),
        hasSubmitted: false,
        hasRequested: false,
        hasCompletedRequest: false,
      );
}
