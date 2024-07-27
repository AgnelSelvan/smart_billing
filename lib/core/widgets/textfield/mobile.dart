import 'package:smart_billing/core/widgets/textfield/textfield.dart';

class AppMobileNoTextField extends AppFormTextField {
  @override
  final String? labelText = 'Your Mobile No.';

  @override
  final String? hintText = '9234586749';

  const AppMobileNoTextField({
    super.key,
    super.focusNode,
    super.maxLines,
    super.obsecureText,
    super.onEditingComplete,
    super.validator,
    super.name = 'mobileNo',
  });
}
