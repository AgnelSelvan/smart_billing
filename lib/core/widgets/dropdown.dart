import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AppDropdown<T> extends StatefulWidget {
  const AppDropdown({
    super.key,
    this.dropDownList = const [],
    this.value,
    this.onChanged,
    this.labelText,
    this.isEnabled = true,
    required this.name,
    this.validator,
  });

  final List<T> dropDownList;
  final T? value;
  final Function(T?)? onChanged;
  final String? labelText;
  final bool isEnabled;
  final String name;
  final String? Function(T?)? validator;

  @override
  State<AppDropdown<T>> createState() => _AppDropdownState<T>();
}

class _AppDropdownState<T> extends State<AppDropdown<T>> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderDropdown<T>(
      validator: widget.validator,
      name: widget.name,
      onChanged: widget.onChanged,
      items: widget.dropDownList
          .map(
            (e) => DropdownMenuItem<T>(
              value: e,
              child: Text(e.toString()),
            ),
          )
          .toList(),
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: Theme.of(context)
            .textTheme
            .labelMedium
            ?.copyWith(color: Colors.grey[600]),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey[400]!.withOpacity(0.4),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey[400]!.withOpacity(0.4),
          ),
        ),
      ),
    );
  }
}
