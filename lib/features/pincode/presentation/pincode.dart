import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:smart_billing/core/extension/context.dart';
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
                  Expanded(
                    child: AppFormTextField(
                      labelText: context.loc.enterPincode,
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
              AppFormTextField(
                labelText: context.loc.enterState,
                validator: AppValidators.stateValidate,
                name: 'state',
              ),
              const SizedBox(
                height: 10,
              ),
              AppFormTextField(
                labelText: context.loc.enterCity,
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
