import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AppDateTime extends StatelessWidget {
  const AppDateTime({
    super.key,
    this.selectedDateTime,
    this.labelText,
    this.name,
  });
  final DateTime? selectedDateTime;
  final String? labelText;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return FormBuilderDateTimePicker(
      name: name ?? 'dateTime',
      inputType: InputType.date,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: (Colors.grey[400]!).withOpacity(0.4),
            width: 1.2,
          ),
        ),
        labelStyle: Theme.of(context)
            .textTheme
            .labelMedium
            ?.copyWith(color: Colors.grey[600]),
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
