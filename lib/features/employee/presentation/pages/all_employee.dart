import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:smart_billing/core/enum/search.dart';
import 'package:smart_billing/core/enum/sort.dart';
import 'package:smart_billing/core/routes/routes.dart';
import 'package:smart_billing/core/utils/app/app_bloc_stateless.dart';
import 'package:smart_billing/core/widgets/dropdown.dart';
import 'package:smart_billing/core/widgets/table.dart';
import 'package:smart_billing/core/widgets/textfield/textfield.dart';
import 'package:smart_billing/features/employee/presentation/manager/employee_bloc.dart';

class EmployeeListingScreen
    extends AppBlocStatelessWidget<EmployeeBloc, EmployeeState> {
  EmployeeListingScreen({super.key});
  final formKey = GlobalKey<FormBuilderState>();

  void _onSearch(EmployeeBloc bloc, EmployeeSearchCategory searchCategory,
      EmployeeSortBy sortBy) {
    final search = formKey.currentState?.fields['search']?.value;
    bloc.add(
      UpdateEmployeeListingBasedOnSearchAndSortEvent(
        search: search ?? '',
        searchCategory: searchCategory,
        sortBy: sortBy,
      ),
    );
  }

  @override
  Widget buildView(
      BuildContext context, EmployeeBloc bloc, EmployeeState state) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: FormBuilder(
          key: formKey,
          onChanged: () {
            _onSearch(bloc, state.searchCategory, state.sortBy);
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 140,
                          child: AppDropdown<EmployeeSearchCategory>(
                            onChanged: (val) {
                              if (val != null) {
                                _onSearch(bloc, val, state.sortBy);
                              }
                            },
                            dropDownList: EmployeeSearchCategory.values,
                            value: state.searchCategory,
                            labelText: 'Category',
                            name: 'category',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          constraints: const BoxConstraints(
                            maxWidth: 300,
                          ),
                          child: const AppFormTextField(
                            labelText: 'Search based on selected category',
                            name: 'search',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 48,
                          child: ElevatedButton.icon(
                            onPressed: () async {
                              await Navigator.pushNamed(
                                  context, AppRoutes.addEmployeePage);
                              if (context.mounted) {
                                context
                                    .read<EmployeeBloc>()
                                    .add(const GetAllEmployeeEvent());
                              }
                            },
                            icon: const Icon(Icons.add),
                            label: const Text('Add Employee'),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 140,
                          child: AppDropdown<EmployeeSortBy>(
                            onChanged: (val) {
                              if (val != null) {
                                _onSearch(bloc, state.searchCategory, val);
                              }
                            },
                            dropDownList: EmployeeSortBy.values,
                            value: state.sortBy,
                            labelText: 'Sort By',
                            name: 'sortBy',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    )
                  ],
                ),
                AppTable(
                  headers: const [
                    'Emp Code',
                    'Name',
                    'Mobile No',
                    'Role',
                    'State',
                    'Account Status',
                  ],
                  onDoubleTap: (index) async {
                    await Navigator.pushNamed(
                        context, AppRoutes.updateEmployeePage,
                        arguments: {
                          'user': state.userEntities[index],
                        });
                    if (context.mounted) {
                      context
                          .read<EmployeeBloc>()
                          .add(const GetAllEmployeeEvent());
                    }
                  },
                  data: [
                    ...state.userEntities.map((e) => [
                          e.employeeCode.toString(),
                          (e.name),
                          e.mobile.firstOrNull?.toString() ?? 'NA',
                          e.role.toString(),
                          (e.state ?? '').toString(),
                          e.status.toString(),
                        ])
                  ],
                  flexWidth: const [
                    2,
                    4,
                    2,
                    2,
                    2,
                    2,
                    2,
                  ],
                  expandedWidget: (index) {
                    final value = state.userEntities[index];
                    final width = MediaQuery.of(context).size.width / 5;
                    return Column(
                      children: [
                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: [
                            ViewFilledDataTextField(
                              width: width,
                              labelText: 'Name',
                              value: value.name,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ViewFilledDataTextField(
                              width: width,
                              labelText: 'Mobile No',
                              value: (value.mobile.firstOrNull),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ViewFilledDataTextField(
                              width: width,
                              labelText: 'User Status',
                              value: (value.status).toString(),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ViewFilledDataTextField(
                              width: width,
                              labelText: 'Address',
                              value: (value.address ?? ''),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ViewFilledDataTextField(
                              width: width,
                              labelText: 'State',
                              value: (value.state ?? ''),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ViewFilledDataTextField(
                              width: width,
                              labelText: 'City',
                              value: (value.city ?? ''),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ViewFilledDataTextField(
                              width: width,
                              labelText: 'Pincode',
                              value: (value.pincode ?? '').toString(),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ViewFilledDataTextField(
                              width: width,
                              labelText: 'Blood Group',
                              value: (value.bloodGroup ?? ''),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ViewFilledDataTextField(
                              width: width,
                              labelText: 'DOB',
                              value: value.dob == null
                                  ? ''
                                  : DateFormat('dd/MM/yyyy')
                                      .format(value.dob ?? DateTime.now()),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ViewFilledDataTextField(
                              width: width,
                              labelText: 'Email',
                              value: (value.email ?? ''),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ViewFilledDataTextField(
                              width: width,
                              labelText: 'Emergency Contact',
                              value: (value.emergencyContact),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ViewFilledDataTextField(
                              width: width,
                              labelText: 'Role',
                              value: (value.role.toString()),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.red.shade50),
                              foregroundColor:
                                  WidgetStateProperty.all(Colors.red),
                            ),
                            onPressed: () {
                              context
                                  .read<EmployeeBloc>()
                                  .add(DeleteEmployeeEvent(value.id));
                            },
                            icon: const Icon(Icons.delete),
                            label: const Text('Delete Record'),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ViewFilledDataTextField extends StatelessWidget {
  const ViewFilledDataTextField({
    super.key,
    required this.labelText,
    required this.value,
    required this.width,
  });
  final String labelText;
  final String? value;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: AppTextField(
        labelText: labelText,
        readOnly: true,
        controller: TextEditingController(text: value),
      ),
    );
  }
}
