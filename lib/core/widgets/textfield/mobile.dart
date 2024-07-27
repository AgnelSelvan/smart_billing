import 'package:smart_billing/core/widgets/textfield/textfield.dart';

class AppMobileNoTextField extends AppTextField {
  @override
  final String? labelText = "Your Mobile No.";

  @override
  final String? hintText = "9234586749";

  const AppMobileNoTextField({
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
