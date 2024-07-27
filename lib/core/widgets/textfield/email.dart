import 'package:smart_billing/core/widgets/textfield/textfield.dart';

class AppEmailTextField extends AppTextField {
  @override
  final String? labelText = "Your Email";

  @override
  final String? hintText = "example@gmail.com";

  const AppEmailTextField({
    super.key,
    super.controller,
    super.focusNode,
    super.maxLines,
    super.obsecureText,
    super.onChanged,
    super.onEditingComplete,
    super.validator,
  });
}
