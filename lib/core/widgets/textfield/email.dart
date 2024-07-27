import 'package:smart_billing/core/widgets/textfield/textfield.dart';

class AppEmailTextField extends AppFormTextField {
  @override
  final String? labelText = 'Your Email';

  @override
  final String? hintText = 'example@gmail.com';

  const AppEmailTextField({
    super.key,
    super.focusNode,
    super.maxLines,
    super.obsecureText,
    super.onEditingComplete,
    super.validator,
    super.name = 'email',
  });
}
