import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final bool obsecureText;
  final Function(String)? onEditingComplete;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final int maxLines;
  final bool enabled;
  final bool readOnly;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  const AppTextField({
    super.key,
    this.labelText,
    this.hintText,
    this.obsecureText = false,
    this.onEditingComplete,
    this.onChanged,
    this.controller,
    this.focusNode,
    this.maxLines = 1,
    this.enabled = true,
    this.readOnly = false,
    this.validator,
    this.suffixIcon,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late FocusNode focusNode;
  late TextEditingController controller;
  @override
  void initState() {
    controller = widget.controller ?? TextEditingController();
    focusNode = widget.focusNode ?? FocusNode();
    focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        widget.onEditingComplete?.call(controller.text);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: TextFormField(
        key: widget.key,
        focusNode: focusNode,
        obscureText: widget.obsecureText,
        obscuringCharacter: "*",
        onEditingComplete: () {
          widget.onEditingComplete?.call(controller.text);
        },
        controller: controller,
        enabled: widget.enabled,
        maxLines: widget.maxLines,
        onChanged: widget.onChanged,
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
      ),
    );
  }
}
