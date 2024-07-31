import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:smart_billing/core/extension/context.dart';
import 'package:smart_billing/core/utils/app/app_bloc_stateless.dart';
import 'package:smart_billing/core/utils/toast/toast.dart';
import 'package:smart_billing/core/validator/validator.dart';
import 'package:smart_billing/core/widgets/app_date_time.dart';
import 'package:smart_billing/core/widgets/appbar.dart';
import 'package:smart_billing/core/widgets/bordered_widget.dart';
import 'package:smart_billing/core/widgets/dropdown.dart';
import 'package:smart_billing/core/widgets/textfield/textfield.dart';
import 'package:smart_billing/features/employee/presentation/manager/employee_bloc.dart';
import 'package:smart_billing/features/pincode/presentation/pincode.dart';
import 'package:smart_billing/features/pincode/presentation/provider/pincode.dart';
import 'package:smart_billing/features/user/data/models/user_model.dart';
import 'package:smart_billing/features/user/domain/usecase/add_user_usecase.dart';

enum Crud {
  add,
  update;
}

/// CU Means Create and Update
class AddEmployeePage
    extends AppBlocStatelessWidget<EmployeeBloc, EmployeeState> {
  const AddEmployeePage({
    super.key,
    required this.crud,
  });
  final Crud crud;

  @override
  void listener(BuildContext context, EmployeeBloc bloc, EmployeeState state) {
    print('state: ${state.runtimeType}');
    if (state is EmployeeErrorState) {
      AppToastMessenger.showErrorMessage(
        context,
        message: state.message.toString(),
      );
    } else if (state is AddedEmployeeState) {
      bloc.formKey.currentState?.reset();
      final pincodeProvider = context.read<PincodeProvider>();
      pincodeProvider.formKey.currentState?.reset();
      bloc.formKey.currentState?.reset();
      bloc.formKey.currentState?.patchValue({
        'employeeCode': (state.userEntities.length + 1).toString(),
      });
      AppToastMessenger.showSuccessMessage(
        context,
        "Employee ${crud == Crud.add ? 'added' : 'updated'} Successfully",
      );
    }
    super.listener(context, bloc, state);
  }

  @override
  Widget buildView(
      BuildContext context, EmployeeBloc bloc, EmployeeState state) {
    return Scaffold(
      appBar: SmartBillingAppBar(
        subTitle: crud == Crud.add ? 'Add New Employee' : 'Update Employee',
        title: 'Back to Employee List',
      ),
      body: FormBuilder(
        key: bloc.formKey,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  BorderedCollection(
                    title: 'Employee Details',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Expanded(
                              child: AppFormTextField(
                                validator: AppValidators.nameValidate,
                                name: 'name',
                                labelText: 'Name',
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: AppFormTextField(
                              name: 'mobileNo',
                              validator: AppValidators.mobileNoValidate,
                              labelText: context.loc.mobileNo,
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Expanded(
                              child: AppFormTextField(
                                validator: AppValidators.emailValidate,
                                name: 'email',
                                labelText: 'Email',
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: AppFormTextField(
                                validator: AppValidators.fieldRequired,
                                name: 'password',
                                labelText: 'Password',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // Add Password section
                      ],
                    ),
                  ),
                  // TODO: 3 Bordered Box
                  // Address, pincode, city, state
                  const BorderedCollection(
                    title: 'Residential Details',
                    child: Column(
                      children: [
                        AppFormTextField(
                          labelText: 'Residential Address',
                          maxLines: 3,
                          validator: AppValidators.addressValidate,
                          name: 'address',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        StateCityPincode(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // TODO: 2 Bordered Box
            // Role, EmployeeCode, emergency contact, Blood group, DOB
            Expanded(
              child: Column(
                children: [
                  BorderedCollection(
                    title: 'Other Details',
                    child: Column(
                      children: [
                        const AppFormTextField(
                          labelText: 'Employee Code',
                          readOnly: true,
                          name: 'employeeCode',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Expanded(
                              child: AppFormTextField(
                                labelText: 'Emergency Contact No',
                                name: 'emergencyContactNo',
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: AppFormTextField(
                                labelText: 'Blood Group',
                                name: 'bloodGroup',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: AppDropdown<UserRole>(
                                dropDownList: UserRole.values,
                                labelText: 'Select a Role',
                                onChanged: (val) {},
                                name: 'role',
                                validator: AppValidators.fieldRequired,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded(
                              child: AppDateTime(
                                labelText: 'Select Date Of Birth',
                                name: 'dob',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  if (crud == Crud.update)
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: AppDropdown<UserStatus>(
                        onChanged: (val) {},
                        dropDownList: UserStatus.values,
                        labelText: 'Account Status',
                        name: 'userStatus',
                        validator: AppValidators.fieldRequired,
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.delete),
                          label: const Text('Clear All'),
                          style: ButtonStyle(
                            foregroundColor:
                                WidgetStateProperty.all(Colors.red),
                          ),
                        ),
                        FilledButton(
                          onPressed: () async {
                            final pincodeProvider =
                                context.read<PincodeProvider>();
                            final pincodeValidate = pincodeProvider
                                .formKey.currentState
                                ?.validate();
                            final employeeValidate =
                                bloc.formKey.currentState?.validate();
                            if (pincodeValidate == true &&
                                employeeValidate == true) {
                              final pincode = pincodeProvider
                                  .formKey.currentState?.instantValue;
                              final employee = UserModel.fromAddEmployeeForm(
                                json: bloc.formKey.currentState?.instantValue,
                                pincode: pincode,
                              );
                              bloc.add(
                                AddEmployeeEvent(
                                  addUserParams: AddUserParams(
                                    id: employee.id,
                                    name: employee.name,
                                    email: employee.email,
                                    password: employee.password,
                                    mobile: employee.mobile,
                                    address: employee.address,
                                    city: employee.city,
                                    state: employee.state,
                                    pincode: employee.pincode,
                                    createdAt: employee.createdAt,
                                    role: employee.role,
                                    status: employee.status,
                                    bloodGroup: employee.bloodGroup,
                                    emergencyMobileNo:
                                        employee.emergencyMobileNo,
                                    dob: employee.dob,
                                    employeeCode: employee.employeeCode,
                                  ),
                                ),
                              );
                            }
                          },
                          child: const Text('Save'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
