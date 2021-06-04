import 'package:flutter/cupertino.dart';
import 'package:sp_web/common/controller/controller.dart';
import 'package:sp_web/common/mixins/toast_mixin.dart';
import 'package:sp_web/injection.dart';
import 'package:sp_web/modules/admin/application/login/login_bloc.dart';
import 'package:sp_web/modules/admin/domain/entities/admin.dart';
import 'package:sp_web/modules/admin/domain/use_cases/login.dart';
import 'package:sp_web/modules/admin/presentation/models/login_view_model.dart';

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
            ? s.password.fold((l) => l.message, (r) => null)
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
    final admin = Admin.createForLogin(
        phoneNumber: bloc.state.phoneNumber.getOrElse(() => null)?.phoneNumber,
        password: bloc.state.password.getOrElse(() => null)?.password);
    admin.fold(() {
      toastError("Invalid Inputs");
    }, (a) async {
      bloc.add(LoginRequestedEvent());
      final response = await getIt.get<Login>().execute(a);
      response.fold((l) {
        bloc.add(LoginRequestFailedEvent(l));
        print(l.message);
        toastError(l.message);
      }, (r) {
        bloc.add(LoginRequestSucceededEvent(r));
        Navigator.pushReplacementNamed(context, '/dashboard');
      });
    });
  }
}
