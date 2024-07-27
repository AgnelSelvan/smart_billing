import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AppFormTextField extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final bool obsecureText;
  final Function(String)? onEditingComplete;
  final FocusNode? focusNode;
  final int maxLines;
  final bool enabled;
  final bool readOnly;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final String name;
  final GlobalKey<FormBuilderState>? formKey;
  const AppFormTextField({
    super.key,
    this.labelText,
    this.hintText,
    this.obsecureText = false,
    this.onEditingComplete,
    this.focusNode,
    this.maxLines = 1,
    this.enabled = true,
    this.readOnly = false,
    this.validator,
    this.suffixIcon,
    required this.name,
    this.formKey,
  });

  @override
  State<AppFormTextField> createState() => _AppFormTextFieldState();
}

class _AppFormTextFieldState extends State<AppFormTextField> {
  late FocusNode focusNode;
  @override
  void initState() {
    focusNode = widget.focusNode ?? FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: FormBuilderTextField(
        key: widget.formKey,
        focusNode: focusNode,
        obscureText: widget.obsecureText,
        obscuringCharacter: '*',
        enabled: widget.enabled,
        maxLines: widget.maxLines,
        readOnly: widget.readOnly,
        validator: widget.validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          suffixIcon: widget.suffixIcon,
          alignLabelWithHint: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey.shade300,
            ),
          ),
          fillColor: widget.enabled ? null : Colors.grey[200],
          filled: !widget.enabled,
          labelText: widget.labelText,
          labelStyle: Theme.of(context)
              .textTheme
              .labelMedium
              ?.copyWith(color: Colors.grey[600]),
          hintText: widget.hintText,
          hintStyle: Theme.of(context)
              .textTheme
              .labelMedium
              ?.copyWith(color: Colors.grey[400]),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey.shade300,
            ),
          ),
        ),
        name: widget.name,
      ),
    );
  }
}
