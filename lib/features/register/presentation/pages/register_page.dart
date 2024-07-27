import 'package:flutter/material.dart';
import 'package:smart_billing/core/di/di.dart';
import 'package:smart_billing/core/utils/environments/environments.dart';
import 'package:smart_billing/core/validator/validator.dart';
import 'package:smart_billing/core/widgets/textfield/email.dart';
import 'package:smart_billing/core/widgets/textfield/firstname.dart';
import 'package:smart_billing/core/widgets/textfield/lastname.dart';
import 'package:smart_billing/core/widgets/textfield/mobile.dart';
import 'package:smart_billing/core/widgets/textfield/textfield.dart';
import 'package:smart_billing/features/pincode/presentation/pincode.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Form(
        key: formKey,
        child: Stack(
          children: [
            Row(
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
                                  const FlutterLogo(
                                    size: 20,
                                  ),
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
                                'Register',
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
                                'Get Registered to get started with Smart Billing',
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
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: AppFirstNameTextField(),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: AppLastNameTextField(
                                          onEditingComplete: (val) {},
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  AppEmailTextField(
                                    onEditingComplete: (val) {},
                                    validator: AppValidators.emailValidate,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  RepaintBoundary(
                                    child: AppMobileNoTextField(
                                      onEditingComplete: (val) {},
                                      validator: AppValidators.mobileNoValidate,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  AppTextField(
                                    labelText: 'Your Password',
                                    obsecureText: true,
                                    onEditingComplete: (val) {},
                                    validator: AppValidators.fieldRequired,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
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
                    padding: const EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height,
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width:
                                  MediaQuery.of(context).size.width * 0.5 / 1.8,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Company Details',
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
                                  AppTextField(
                                    labelText: 'Company Name',
                                    onEditingComplete: (val) {},
                                    validator:
                                        AppValidators.companyNameValidate,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  AppTextField(
                                    labelText: 'Mobile Number',
                                    onEditingComplete: (val) {},
                                    validator: AppValidators.mobileNoValidate,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  AppTextField(
                                    labelText: 'Company Address',
                                    onEditingComplete: (val) {},
                                    maxLines: 3,
                                    validator: AppValidators.addressValidate,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const StateCityPincode(),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  FilledButton(
                                    style: FilledButton.styleFrom(
                                      minimumSize: const Size.fromHeight(49),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () async {
                                      if (formKey.currentState?.validate() ??
                                          false) {}
                                    },
                                    child: const Text('Sign Up'),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
