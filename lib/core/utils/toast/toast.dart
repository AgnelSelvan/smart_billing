import 'package:flutter/material.dart';

class AppToastMessenger {
  static void show(BuildContext context, String message, {Color? color}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        margin: const EdgeInsets.all(10),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        content: SelectableText(message),
        backgroundColor: color,
      ),
    );
  }

  static void showErrorMessage(BuildContext context, {String? message}) {
    show(context, message ?? 'Something went wrong', color: Colors.red);
  }

  static void showSuccessMessage(BuildContext context, String message) {
    show(context, message, color: Colors.green);
  }
}
