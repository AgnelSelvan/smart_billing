import 'package:flutter/material.dart';
import 'package:smart_billing/core/widgets/textfield/textfield.dart';

class AppAddMoreMobileNoTextField extends StatelessWidget {
  const AppAddMoreMobileNoTextField({
    super.key,
    this.obsecureText,
    this.onEditingComplete,
    this.onChanged,
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
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final int? maxLines;
  final bool? enabled;
  final bool? readOnly;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextField(
            labelText: "Your Mobile No.",
            hintText: "9234586749",
            obsecureText: obsecureText ?? false,
            onEditingComplete: onEditingComplete,
            onChanged: onChanged,
            controller: controller,
            focusNode: focusNode,
            maxLines: maxLines ?? 1,
            enabled: enabled ?? true,
            readOnly: readOnly ?? false,
            validator: validator,
            suffixIcon: suffixIcon,
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
