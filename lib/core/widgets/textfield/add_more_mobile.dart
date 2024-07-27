import 'package:flutter/material.dart';
import 'package:smart_billing/core/widgets/textfield/textfield.dart';

class AppAddMoreMobileNoTextField extends StatelessWidget {
  const AppAddMoreMobileNoTextField({
    super.key,
    required this.name,
    this.obsecureText,
    this.onEditingComplete,
    this.controller,
    this.focusNode,
    this.maxLines,
    this.enabled,
    this.readOnly,
    this.validator,
    this.suffixIcon,
  });
  final bool? obsecureText;
  final Function(String)? onEditingComplete;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final int? maxLines;
  final bool? enabled;
  final bool? readOnly;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppFormTextField(
            labelText: 'Your Mobile No.',
            hintText: '9234586749',
            obsecureText: obsecureText ?? false,
            onEditingComplete: onEditingComplete,
            focusNode: focusNode,
            maxLines: maxLines ?? 1,
            enabled: enabled ?? true,
            readOnly: readOnly ?? false,
            validator: validator,
            suffixIcon: suffixIcon,
            name: name,
          ),
        ),
        IconButton(
            onPressed: () {
              onEditingComplete?.call(controller?.text ?? '');
              controller?.clear();
            },
            icon: const Icon(Icons.add)),
      ],
    );
  }
}
