import 'package:smart_billing/core/validator/validator.dart';
import 'package:smart_billing/core/widgets/textfield/textfield.dart';

class AppFirstNameTextField extends AppFormTextField {
  @override
  final String? labelText = 'First Name';

  @override
  final String? hintText = 'e.g. John';

  const AppFirstNameTextField({
    super.key,
    super.focusNode,
    super.maxLines,
    super.obsecureText,
    super.onEditingComplete,
    super.validator = AppValidators.nameValidate,
    required String? name,
  }) : super(name: name ?? 'firstName');
}
