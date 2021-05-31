// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'new_employee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NewEmployeeStateTearOff {
  const _$NewEmployeeStateTearOff();

// ignore: unused_element
  _NewEmployeeState call(
      {Either<PersonNameFailure, PersonName> firstName,
      Either<PersonNameFailure, PersonName> lastName,
      Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      Either<EmailFailure, Email> email,
      Option<EmployeePosition> employeePosition,
      Either<SalaryFailure, Salary> salary,
      Option<EmployeeType> employeeType,
      Option<String> photoUrl,
      Option<String> docUrl,
      Option<Failure> requestFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool hasCompletedRequest}) {
    return _NewEmployeeState(
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
      email: email,
      employeePosition: employeePosition,
      salary: salary,
      employeeType: employeeType,
      photoUrl: photoUrl,
      docUrl: docUrl,
      requestFailure: requestFailure,
      hasSubmitted: hasSubmitted,
      hasRequested: hasRequested,
      hasCompletedRequest: hasCompletedRequest,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NewEmployeeState = _$NewEmployeeStateTearOff();

/// @nodoc
mixin _$NewEmployeeState {
  Either<PersonNameFailure, PersonName> get firstName;
  Either<PersonNameFailure, PersonName> get lastName;
  Either<PhoneNumberFailure, PhoneNumber> get phoneNumber;
  Either<EmailFailure, Email> get email;
  Option<EmployeePosition> get employeePosition;
  Either<SalaryFailure, Salary> get salary;
  Option<EmployeeType> get employeeType;
  Option<String> get photoUrl;
  Option<String> get docUrl;
  Option<Failure> get requestFailure;
  bool get hasSubmitted;
  bool get hasRequested;
  bool get hasCompletedRequest;

  @JsonKey(ignore: true)
  $NewEmployeeStateCopyWith<NewEmployeeState> get copyWith;
}

/// @nodoc
abstract class $NewEmployeeStateCopyWith<$Res> {
  factory $NewEmployeeStateCopyWith(
          NewEmployeeState value, $Res Function(NewEmployeeState) then) =
      _$NewEmployeeStateCopyWithImpl<$Res>;
  $Res call(
      {Either<PersonNameFailure, PersonName> firstName,
      Either<PersonNameFailure, PersonName> lastName,
      Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      Either<EmailFailure, Email> email,
      Option<EmployeePosition> employeePosition,
      Either<SalaryFailure, Salary> salary,
      Option<EmployeeType> employeeType,
      Option<String> photoUrl,
      Option<String> docUrl,
      Option<Failure> requestFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool hasCompletedRequest});
}

/// @nodoc
class _$NewEmployeeStateCopyWithImpl<$Res>
    implements $NewEmployeeStateCopyWith<$Res> {
  _$NewEmployeeStateCopyWithImpl(this._value, this._then);

  final NewEmployeeState _value;
  // ignore: unused_field
  final $Res Function(NewEmployeeState) _then;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object phoneNumber = freezed,
    Object email = freezed,
    Object employeePosition = freezed,
    Object salary = freezed,
    Object employeeType = freezed,
    Object photoUrl = freezed,
    Object docUrl = freezed,
    Object requestFailure = freezed,
    Object hasSubmitted = freezed,
    Object hasRequested = freezed,
    Object hasCompletedRequest = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName as Either<PersonNameFailure, PersonName>,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName as Either<PersonNameFailure, PersonName>,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as Either<PhoneNumberFailure, PhoneNumber>,
      email: email == freezed
          ? _value.email
          : email as Either<EmailFailure, Email>,
      employeePosition: employeePosition == freezed
          ? _value.employeePosition
          : employeePosition as Option<EmployeePosition>,
      salary: salary == freezed
          ? _value.salary
          : salary as Either<SalaryFailure, Salary>,
      employeeType: employeeType == freezed
          ? _value.employeeType
          : employeeType as Option<EmployeeType>,
      photoUrl:
          photoUrl == freezed ? _value.photoUrl : photoUrl as Option<String>,
      docUrl: docUrl == freezed ? _value.docUrl : docUrl as Option<String>,
      requestFailure: requestFailure == freezed
          ? _value.requestFailure
          : requestFailure as Option<Failure>,
      hasSubmitted:
          hasSubmitted == freezed ? _value.hasSubmitted : hasSubmitted as bool,
      hasRequested:
          hasRequested == freezed ? _value.hasRequested : hasRequested as bool,
      hasCompletedRequest: hasCompletedRequest == freezed
          ? _value.hasCompletedRequest
          : hasCompletedRequest as bool,
    ));
  }
}

/// @nodoc
abstract class _$NewEmployeeStateCopyWith<$Res>
    implements $NewEmployeeStateCopyWith<$Res> {
  factory _$NewEmployeeStateCopyWith(
          _NewEmployeeState value, $Res Function(_NewEmployeeState) then) =
      __$NewEmployeeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<PersonNameFailure, PersonName> firstName,
      Either<PersonNameFailure, PersonName> lastName,
      Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      Either<EmailFailure, Email> email,
      Option<EmployeePosition> employeePosition,
      Either<SalaryFailure, Salary> salary,
      Option<EmployeeType> employeeType,
      Option<String> photoUrl,
      Option<String> docUrl,
      Option<Failure> requestFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool hasCompletedRequest});
}

/// @nodoc
class __$NewEmployeeStateCopyWithImpl<$Res>
    extends _$NewEmployeeStateCopyWithImpl<$Res>
    implements _$NewEmployeeStateCopyWith<$Res> {
  __$NewEmployeeStateCopyWithImpl(
      _NewEmployeeState _value, $Res Function(_NewEmployeeState) _then)
      : super(_value, (v) => _then(v as _NewEmployeeState));

  @override
  _NewEmployeeState get _value => super._value as _NewEmployeeState;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object phoneNumber = freezed,
    Object email = freezed,
    Object employeePosition = freezed,
    Object salary = freezed,
    Object employeeType = freezed,
    Object photoUrl = freezed,
    Object docUrl = freezed,
    Object requestFailure = freezed,
    Object hasSubmitted = freezed,
    Object hasRequested = freezed,
    Object hasCompletedRequest = freezed,
  }) {
    return _then(_NewEmployeeState(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName as Either<PersonNameFailure, PersonName>,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName as Either<PersonNameFailure, PersonName>,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as Either<PhoneNumberFailure, PhoneNumber>,
      email: email == freezed
          ? _value.email
          : email as Either<EmailFailure, Email>,
      employeePosition: employeePosition == freezed
          ? _value.employeePosition
          : employeePosition as Option<EmployeePosition>,
      salary: salary == freezed
          ? _value.salary
          : salary as Either<SalaryFailure, Salary>,
      employeeType: employeeType == freezed
          ? _value.employeeType
          : employeeType as Option<EmployeeType>,
      photoUrl:
          photoUrl == freezed ? _value.photoUrl : photoUrl as Option<String>,
      docUrl: docUrl == freezed ? _value.docUrl : docUrl as Option<String>,
      requestFailure: requestFailure == freezed
          ? _value.requestFailure
          : requestFailure as Option<Failure>,
      hasSubmitted:
          hasSubmitted == freezed ? _value.hasSubmitted : hasSubmitted as bool,
      hasRequested:
          hasRequested == freezed ? _value.hasRequested : hasRequested as bool,
      hasCompletedRequest: hasCompletedRequest == freezed
          ? _value.hasCompletedRequest
          : hasCompletedRequest as bool,
    ));
  }
}

/// @nodoc
class _$_NewEmployeeState implements _NewEmployeeState {
  _$_NewEmployeeState(
      {this.firstName,
      this.lastName,
      this.phoneNumber,
      this.email,
      this.employeePosition,
      this.salary,
      this.employeeType,
      this.photoUrl,
      this.docUrl,
      this.requestFailure,
      this.hasSubmitted,
      this.hasRequested,
      this.hasCompletedRequest});

  @override
  final Either<PersonNameFailure, PersonName> firstName;
  @override
  final Either<PersonNameFailure, PersonName> lastName;
  @override
  final Either<PhoneNumberFailure, PhoneNumber> phoneNumber;
  @override
  final Either<EmailFailure, Email> email;
  @override
  final Option<EmployeePosition> employeePosition;
  @override
  final Either<SalaryFailure, Salary> salary;
  @override
  final Option<EmployeeType> employeeType;
  @override
  final Option<String> photoUrl;
  @override
  final Option<String> docUrl;
  @override
  final Option<Failure> requestFailure;
  @override
  final bool hasSubmitted;
  @override
  final bool hasRequested;
  @override
  final bool hasCompletedRequest;

  @override
  String toString() {
    return 'NewEmployeeState(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, email: $email, employeePosition: $employeePosition, salary: $salary, employeeType: $employeeType, photoUrl: $photoUrl, docUrl: $docUrl, requestFailure: $requestFailure, hasSubmitted: $hasSubmitted, hasRequested: $hasRequested, hasCompletedRequest: $hasCompletedRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewEmployeeState &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.employeePosition, employeePosition) ||
                const DeepCollectionEquality()
                    .equals(other.employeePosition, employeePosition)) &&
            (identical(other.salary, salary) ||
                const DeepCollectionEquality().equals(other.salary, salary)) &&
            (identical(other.employeeType, employeeType) ||
                const DeepCollectionEquality()
                    .equals(other.employeeType, employeeType)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.docUrl, docUrl) ||
                const DeepCollectionEquality().equals(other.docUrl, docUrl)) &&
            (identical(other.requestFailure, requestFailure) ||
                const DeepCollectionEquality()
                    .equals(other.requestFailure, requestFailure)) &&
            (identical(other.hasSubmitted, hasSubmitted) ||
                const DeepCollectionEquality()
                    .equals(other.hasSubmitted, hasSubmitted)) &&
            (identical(other.hasRequested, hasRequested) ||
                const DeepCollectionEquality()
                    .equals(other.hasRequested, hasRequested)) &&
            (identical(other.hasCompletedRequest, hasCompletedRequest) ||
                const DeepCollectionEquality()
                    .equals(other.hasCompletedRequest, hasCompletedRequest)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(employeePosition) ^
      const DeepCollectionEquality().hash(salary) ^
      const DeepCollectionEquality().hash(employeeType) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(docUrl) ^
      const DeepCollectionEquality().hash(requestFailure) ^
      const DeepCollectionEquality().hash(hasSubmitted) ^
      const DeepCollectionEquality().hash(hasRequested) ^
      const DeepCollectionEquality().hash(hasCompletedRequest);

  @JsonKey(ignore: true)
  @override
  _$NewEmployeeStateCopyWith<_NewEmployeeState> get copyWith =>
      __$NewEmployeeStateCopyWithImpl<_NewEmployeeState>(this, _$identity);
}

abstract class _NewEmployeeState implements NewEmployeeState {
  factory _NewEmployeeState(
      {Either<PersonNameFailure, PersonName> firstName,
      Either<PersonNameFailure, PersonName> lastName,
      Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      Either<EmailFailure, Email> email,
      Option<EmployeePosition> employeePosition,
      Either<SalaryFailure, Salary> salary,
      Option<EmployeeType> employeeType,
      Option<String> photoUrl,
      Option<String> docUrl,
      Option<Failure> requestFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool hasCompletedRequest}) = _$_NewEmployeeState;

  @override
  Either<PersonNameFailure, PersonName> get firstName;
  @override
  Either<PersonNameFailure, PersonName> get lastName;
  @override
  Either<PhoneNumberFailure, PhoneNumber> get phoneNumber;
  @override
  Either<EmailFailure, Email> get email;
  @override
  Option<EmployeePosition> get employeePosition;
  @override
  Either<SalaryFailure, Salary> get salary;
  @override
  Option<EmployeeType> get employeeType;
  @override
  Option<String> get photoUrl;
  @override
  Option<String> get docUrl;
  @override
  Option<Failure> get requestFailure;
  @override
  bool get hasSubmitted;
  @override
  bool get hasRequested;
  @override
  bool get hasCompletedRequest;
  @override
  @JsonKey(ignore: true)
  _$NewEmployeeStateCopyWith<_NewEmployeeState> get copyWith;
}
