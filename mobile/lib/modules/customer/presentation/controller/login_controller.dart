import 'package:flutter/cupertino.dart';
import '../../../../common/controller/controller.dart';
import '../../../../common/mixins/toast_mixin.dart';
import '../../../../injection.dart';
import '../../application/login/login_bloc.dart';
import '../../domain/entities/customer.dart';
import '../../domain/use_cases/login.dart';
import '../../presentation/models/login_view_model.dart';

class LoginController extends BlocViewModelController<LoginBloc, LoginEvent,
    LoginState, LoginViewModel> with ToastMixin {
  final BuildContext context;

  LoginController(this.context) : super(getIt.get<LoginBloc>(), true);

  @override
  LoginViewModel mapStateToViewModel(LoginState s) {
    return LoginViewModel(
        phoneNumber: s.phoneNumber.getOrElse(() => null)?.phoneNumber,
        phoneNumberError: s.hasSubmitted
            ? s.phoneNumber.fold((l) => l.message, (r) => null)
            : null,
        password: s.password.getOrElse(() => null)?.password,
        passwordError: s.hasSubmitted
            ? s.phoneNumber.fold((l) => l.message, (r) => null)
            : null,
        isLoading: s.hasRequested,
        hasSubmitted: s.hasSubmitted);
  }

  void onPhoneNumberChanged(String phoneNumber) {
    bloc.add(LoginPhoneNumberChangedEvent(phoneNumber));
  }

  void onPasswordChanged(String password) {
    bloc.add(LoginPasswordChangedEvent(password));
  }

  void onLogin() async {
    bloc.add(LoginSubmittedEvent());
    final customer = Customer.createForLogin(
        phoneNumber: bloc.state.phoneNumber.getOrElse(() => null)?.phoneNumber,
        password: bloc.state.password.getOrElse(() => null)?.password);
    customer.fold(() {
      toastError("Invalid Inputs");
    }, (a) async {
      bloc.add(LoginRequestedEvent());
      final response = await getIt.get<Login>().execute(a);
      response.fold((l) {
        bloc.add(LoginRequestFailedEvent(l));
        toastError(l.message);
      }, (r) {
        bloc.add(LoginRequestSucceededEvent(r));
        Navigator.pushReplacementNamed(context, '/dashboard');
      });
    });
  }
}
