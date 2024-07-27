import 'package:smart_billing/core/validator/validator.dart';
import 'package:smart_billing/core/widgets/textfield/textfield.dart';

class AppFirstNameTextField extends AppTextField {
  @override
  final String? labelText = "First Name";

  @override
  final String? hintText = "e.g. John";

  const AppFirstNameTextField({
    super.key,
    super.controller,
    super.focusNode,
    super.maxLines,
    super.obsecureText,
    super.onChanged,
    super.onEditingComplete,
    super.validator = AppValidators.nameValidate,
  });
}
