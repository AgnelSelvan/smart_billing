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
    print(
        '_onSearch search: $search, searchCategory: $searchCategory, sortBy: $sortBy');
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
                  onDoubleTap: (index) {},
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
                    return Wrap(
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
                          value: (value.mobile.firstOrNull).toString(),
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
                          value: (value.address ?? '').toString(),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ViewFilledDataTextField(
                          width: width,
                          labelText: 'State',
                          value: (value.state ?? '').toString(),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ViewFilledDataTextField(
                          width: width,
                          labelText: 'City',
                          value: (value.city ?? '').toString(),
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
                          value: (value.bloodGroup ?? '').toString(),
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
                          value: (value.email ?? '').toString(),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ViewFilledDataTextField(
                          width: width,
                          labelText: 'Emergency Contact',
                          value: (value.emergencyContact).toString(),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ViewFilledDataTextField(
                          width: width,
                          labelText: 'Role',
                          value: (value.role).toString(),
                        ),
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
  final String value;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: AppFormTextField(
        labelText: labelText,
        readOnly: true,
        name: 'some',
      ),
    );
  }
}
