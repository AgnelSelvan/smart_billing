import 'package:smart_billing/core/validator/validator.dart';
import 'package:smart_billing/core/widgets/textfield/textfield.dart';

class AppLastNameTextField extends AppFormTextField {
  @override
  final String? labelText = 'Last Name';

  @override
  final String? hintText = 'e.g. Doe';

  const AppLastNameTextField({
    super.key,
    super.focusNode,
    super.maxLines,
    super.obsecureText,
    super.name = 'lastName',
    super.onEditingComplete,
    super.validator = AppValidators.nameValidate,
  });
}
