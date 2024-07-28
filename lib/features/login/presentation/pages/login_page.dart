import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_billing/core/assets/assets.dart';
import 'package:smart_billing/core/di/di.dart';
import 'package:smart_billing/core/routes/routes.dart';
import 'package:smart_billing/core/themes/colors.dart';
import 'package:smart_billing/core/utils/app/app_bloc_stateless.dart';
import 'package:smart_billing/core/utils/environments/environments.dart';
import 'package:smart_billing/core/utils/toast/toast.dart';
import 'package:smart_billing/core/validator/validator.dart';
import 'package:smart_billing/core/widgets/textfield/textfield.dart';
import 'package:smart_billing/features/login/presentation/manager/login_bloc.dart';

class LoginPage extends AppBlocStatelessWidget<LoginBloc, LoginState> {
  LoginPage({super.key});
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void listener(BuildContext context, LoginBloc bloc, LoginState state) {
    if (state is LoginLoaded) {
      AppToastMessenger.showSuccessMessage(
          context, 'Logged in as ${state.userEntity.name}');
      Navigator.pushReplacementNamed(context, AppRoutes.homePage);
    } else if (state is LoginError) {
      AppToastMessenger.showErrorMessage(
        context,
        message: state.message.toString(),
      );
    }
    super.listener(context, bloc, state);
  }

  @override
  Widget buildView(BuildContext context, LoginBloc bloc, LoginState state) {
    return Scaffold(
      body: FormBuilder(
        key: _formKey,
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5 / 1.8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const FlutterLogo(),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                getIt<AppEnvironments>().appFlavor.appName,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                      color: Colors.grey.shade800,
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Text(
                            'Login',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  color: Colors.grey.shade900,
                                ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Login with your data you entered during registration',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  color: Colors.grey.shade400,
                                ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const RepaintBoundary(
                            child: AppFormTextField(
                              validator: AppValidators.fieldRequired,
                              name: 'email',
                              labelText: 'Your Email / Mobile No',
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          AppFormTextField(
                            labelText: 'Your Password',
                            obsecureText: true,
                            validator: AppValidators.fieldRequired,
                            onEditingComplete: (val) {
                              _handleLogin(context);
                            },
                            name: 'password',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FilledButton(
                            style: FilledButton.styleFrom(
                                minimumSize: const Size.fromHeight(49),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () async {
                              _handleLogin(context);
                            },
                            child: const Text('Login'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                color: AppColors.primaryColor.withOpacity(0.3),
                child: SvgPicture.asset(AppAssets.loginSVG),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleLogin(BuildContext context) async {
    final validate = _formKey.currentState?.validate() ?? false;
    if (validate) {
      final email =
          _formKey.currentState?.fields['email']?.value.toString() ?? '';
      final password =
          _formKey.currentState?.fields['password']?.value.toString() ?? '';
      context
          .read<LoginBloc>()
          .add(HandleLoginEvent(email: email, password: password));
    }
  }
}
