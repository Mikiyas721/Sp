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
    Either<ImageUrlFailure,ImageUrl> photoUrl,
    Either<ImageUrlFailure, ImageUrl> docUrl,
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
        photoUrl: ImageUrl.create(''),
        docUrl: ImageUrl.create(''),
        requestFailure: none(),
        hasSubmitted: false,
        hasRequested: false,
        hasCompletedRequest: false,
      );
}
