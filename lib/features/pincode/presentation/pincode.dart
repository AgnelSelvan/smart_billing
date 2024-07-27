import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:smart_billing/core/validator/validator.dart';
import 'package:smart_billing/core/widgets/textfield/textfield.dart';
import 'package:smart_billing/features/pincode/presentation/provider/pincode.dart';

class StateCityPincode extends StatelessWidget {
  const StateCityPincode({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Consumer<PincodeProvider>(
      builder: (_, provider, __) {
        return FormBuilder(
          key: provider.formKey,
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(
                    child: AppFormTextField(
                      labelText: 'Enter Pincode',
                      validator: AppValidators.pincodeValidate,
                      name: 'pincode',
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      final pincode = provider
                          .formKey.currentState?.fields['pincode']?.value;
                      if (pincode != null) {
                        if (pincode.length == 6) {
                          provider.updatePincode(pincode);
                        }
                      }
                    },
                    icon: const Icon(Icons.refresh_sharp),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const AppFormTextField(
                labelText: 'Enter State',
                validator: AppValidators.stateValidate,
                name: 'state',
              ),
              const SizedBox(
                height: 10,
              ),
              const AppFormTextField(
                labelText: 'Enter City',
                validator: AppValidators.cityValidate,
                name: 'city',
              ),
            ],
          ),
        );
      },
    );
  }
}
