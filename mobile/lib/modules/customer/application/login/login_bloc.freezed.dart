// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

// ignore: unused_element
  _LoginState call(
      {Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      Either<PasswordFailure, Password> password,
      Option<Failure> requestFailure,
      Option<Customer> customer,
      bool hasSubmitted,
      bool hasRequested}) {
    return _LoginState(
      phoneNumber: phoneNumber,
      password: password,
      requestFailure: requestFailure,
      customer: customer,
      hasSubmitted: hasSubmitted,
      hasRequested: hasRequested,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  Either<PhoneNumberFailure, PhoneNumber> get phoneNumber;
  Either<PasswordFailure, Password> get password;
  Option<Failure> get requestFailure;
  Option<Customer> get customer;
  bool get hasSubmitted;
  bool get hasRequested;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      Either<PasswordFailure, Password> password,
      Option<Failure> requestFailure,
      Option<Customer> customer,
      bool hasSubmitted,
      bool hasRequested});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object phoneNumber = freezed,
    Object password = freezed,
    Object requestFailure = freezed,
    Object customer = freezed,
    Object hasSubmitted = freezed,
    Object hasRequested = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as Either<PhoneNumberFailure, PhoneNumber>,
      password: password == freezed
          ? _value.password
          : password as Either<PasswordFailure, Password>,
      requestFailure: requestFailure == freezed
          ? _value.requestFailure
          : requestFailure as Option<Failure>,
      customer:
          customer == freezed ? _value.customer : customer as Option<Customer>,
      hasSubmitted:
          hasSubmitted == freezed ? _value.hasSubmitted : hasSubmitted as bool,
      hasRequested:
          hasRequested == freezed ? _value.hasRequested : hasRequested as bool,
    ));
  }
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      Either<PasswordFailure, Password> password,
      Option<Failure> requestFailure,
      Option<Customer> customer,
      bool hasSubmitted,
      bool hasRequested});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object phoneNumber = freezed,
    Object password = freezed,
    Object requestFailure = freezed,
    Object customer = freezed,
    Object hasSubmitted = freezed,
    Object hasRequested = freezed,
  }) {
    return _then(_LoginState(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as Either<PhoneNumberFailure, PhoneNumber>,
      password: password == freezed
          ? _value.password
          : password as Either<PasswordFailure, Password>,
      requestFailure: requestFailure == freezed
          ? _value.requestFailure
          : requestFailure as Option<Failure>,
      customer:
          customer == freezed ? _value.customer : customer as Option<Customer>,
      hasSubmitted:
          hasSubmitted == freezed ? _value.hasSubmitted : hasSubmitted as bool,
      hasRequested:
          hasRequested == freezed ? _value.hasRequested : hasRequested as bool,
    ));
  }
}

/// @nodoc
class _$_LoginState implements _LoginState {
  _$_LoginState(
      {this.phoneNumber,
      this.password,
      this.requestFailure,
      this.customer,
      this.hasSubmitted,
      this.hasRequested});

  @override
  final Either<PhoneNumberFailure, PhoneNumber> phoneNumber;
  @override
  final Either<PasswordFailure, Password> password;
  @override
  final Option<Failure> requestFailure;
  @override
  final Option<Customer> customer;
  @override
  final bool hasSubmitted;
  @override
  final bool hasRequested;

  @override
  String toString() {
    return 'LoginState(phoneNumber: $phoneNumber, password: $password, requestFailure: $requestFailure, customer: $customer, hasSubmitted: $hasSubmitted, hasRequested: $hasRequested)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.requestFailure, requestFailure) ||
                const DeepCollectionEquality()
                    .equals(other.requestFailure, requestFailure)) &&
            (identical(other.customer, customer) ||
                const DeepCollectionEquality()
                    .equals(other.customer, customer)) &&
            (identical(other.hasSubmitted, hasSubmitted) ||
                const DeepCollectionEquality()
                    .equals(other.hasSubmitted, hasSubmitted)) &&
            (identical(other.hasRequested, hasRequested) ||
                const DeepCollectionEquality()
                    .equals(other.hasRequested, hasRequested)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(requestFailure) ^
      const DeepCollectionEquality().hash(customer) ^
      const DeepCollectionEquality().hash(hasSubmitted) ^
      const DeepCollectionEquality().hash(hasRequested);

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  factory _LoginState(
      {Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      Either<PasswordFailure, Password> password,
      Option<Failure> requestFailure,
      Option<Customer> customer,
      bool hasSubmitted,
      bool hasRequested}) = _$_LoginState;

  @override
  Either<PhoneNumberFailure, PhoneNumber> get phoneNumber;
  @override
  Either<PasswordFailure, Password> get password;
  @override
  Option<Failure> get requestFailure;
  @override
  Option<Customer> get customer;
  @override
  bool get hasSubmitted;
  @override
  bool get hasRequested;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith;
}
