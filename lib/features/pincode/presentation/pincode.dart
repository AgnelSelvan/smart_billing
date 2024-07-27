import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_billing/core/utils/toast/toast.dart';
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
        return Column(
          children: [
            AppTextField(
              labelText: 'Enter Pincode',
              onEditingComplete: (val) {},
              controller: provider.pincodeController,
              validator: AppValidators.pincodeValidate,
              onChanged: (value) async {
                if (value.length == 6) {
                  final error = await provider.updatePincode(value);
                  if (error != null) {
                    if (context.mounted) {
                      AppToastMessenger.showErrorMessage(
                        context,
                        message: error,
                      );
                    }
                  }
                }
              },
            ),
            const SizedBox(
              height: 10,
            ),
            AppTextField(
              labelText: 'Enter State',
              onEditingComplete: (val) {},
              validator: AppValidators.stateValidate,
              controller: provider.stateController,
            ),
            const SizedBox(
              height: 10,
            ),
            AppTextField(
              labelText: 'Enter City',
              onEditingComplete: (val) {},
              validator: AppValidators.cityValidate,
              controller: provider.cityController,
            ),
          ],
        );
      },
    );
  }
}
