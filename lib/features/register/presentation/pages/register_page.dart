import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:smart_billing/core/di/di.dart';
import 'package:smart_billing/core/extension/context.dart';
import 'package:smart_billing/core/routes/routes.dart';
import 'package:smart_billing/core/utils/app/app_bloc_stateless.dart';
import 'package:smart_billing/core/utils/encrypt/encrypt_decrypt.dart';
import 'package:smart_billing/core/utils/environments/environments.dart';
import 'package:smart_billing/core/utils/toast/toast.dart';
import 'package:smart_billing/core/validator/validator.dart';
import 'package:smart_billing/core/widgets/textfield/email.dart';
import 'package:smart_billing/core/widgets/textfield/first_name.dart';
import 'package:smart_billing/core/widgets/textfield/mobile.dart';
import 'package:smart_billing/core/widgets/textfield/textfield.dart';
import 'package:smart_billing/features/company/data/models/company_model.dart';
import 'package:smart_billing/features/company/domain/usecase/add_company_usecase.dart';
import 'package:smart_billing/features/pincode/presentation/pincode.dart';
import 'package:smart_billing/features/pincode/presentation/provider/pincode.dart';
import 'package:smart_billing/features/register/presentation/manager/register_bloc.dart';
import 'package:smart_billing/features/user/data/models/user_model.dart';
import 'package:smart_billing/features/user/domain/usecase/add_user_usecase.dart';
import 'package:uuid/uuid.dart';

class RegisterPage extends AppBlocStatelessWidget<RegisterBloc, RegisterState> {
  const RegisterPage({super.key});

  @override
  void listener(BuildContext context, RegisterBloc bloc, RegisterState state) {
    if (state is RegisterLoaded) {
      AppToastMessenger.showSuccessMessage(
        context,
        'Company registered successfully',
      );
      Navigator.of(context).pushReplacementNamed(AppRoutes.homePage);
    }
    super.listener(context, bloc, state);
  }

  @override
  Widget buildView(
      BuildContext context, RegisterBloc bloc, RegisterState state) {
    final pincodeProvide = context.read<PincodeProvider>();
    return Scaffold(
      body: FormBuilder(
        key: bloc.formKey,
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
                            context.loc.helloWorld,
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
                          const Column(
                            children: [
                              AppFirstNameTextField(
                                name: 'name',
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              AppEmailTextField(
                                validator: AppValidators.emailValidate,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              RepaintBoundary(
                                child: AppMobileNoTextField(
                                  validator: AppValidators.mobileNoValidate,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              AppFormTextField(
                                labelText: 'Your Password',
                                obsecureText: true,
                                validator: AppValidators.fieldRequired,
                                name: 'password',
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
                          width: MediaQuery.of(context).size.width * 0.5 / 1.8,
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
                              const AppFormTextField(
                                labelText: 'Company Name',
                                validator: AppValidators.companyNameValidate,
                                name: 'companyName',
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const AppFormTextField(
                                labelText: 'Mobile Number',
                                validator: AppValidators.mobileNoValidate,
                                name: 'companyMobileNo',
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const AppFormTextField(
                                labelText: 'Company Address',
                                maxLines: 3,
                                validator: AppValidators.addressValidate,
                                name: 'companyAddress',
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
                                  final employeeValidate =
                                      bloc.formKey.currentState?.validate() ??
                                          false;
                                  final pincodeValidate = pincodeProvide
                                          .formKey.currentState
                                          ?.validate() ??
                                      false;
                                  if (pincodeValidate && employeeValidate) {
                                    final employeeData =
                                        bloc.formKey.currentState?.instantValue;
                                    final pincodeData = pincodeProvide
                                        .formKey.currentState?.instantValue;
                                    final pincode = int.tryParse(
                                            pincodeData?['pincode'] ?? '') ??
                                        0;
                                    bloc.add(
                                      AddOwnerDetailsAndRegisterCompanyEvent(
                                        addUserParams: AddUserParams(
                                          name: employeeData?['name'],
                                          email: employeeData?['email'],
                                          mobile: [employeeData?['mobileNo']],
                                          password:
                                              EncryptDecryptManager.encrypt(
                                            employeeData?['password'] ?? '',
                                          ),
                                          id: const Uuid().v4(),
                                          address: null,
                                          city: null,
                                          state: null,
                                          pincode: null,
                                          createdAt: DateTime.now(),
                                          role: UserRole.owner,
                                          status: UserStatus.active,
                                        ),
                                        addCompanyParams: AddCompanyParams(
                                          address:
                                              employeeData?['companyAddress'],
                                          state: pincodeData?['state'],
                                          city: pincodeData?['city'],
                                          pincode: pincode,
                                          id: const Uuid().v4(),
                                          name: employeeData?['companyName'],
                                          createdAt: DateTime.now(),
                                          email: null,
                                          website: null,
                                          licNO: null,
                                          placeOfDispatch: null,
                                          pan: null,
                                          gstin: null,
                                          mobileNoList: [
                                            employeeData?['companyMobileNo']
                                          ],
                                          companyType: CompanyType.own,
                                        ),
                                      ),
                                    );
                                  }
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
      ),
    );
  }
}
