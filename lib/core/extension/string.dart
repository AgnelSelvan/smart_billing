extension AdvanceFeature on String {
  String get capitalize {
    return "${this[0].toUpperCase()}${substring(1)}";
  }

  int get toInt {
    return int.tryParse(this) ?? 0;
  }
}

extension StringHelper on String? {
  bool get isValidEmail {
    if (this == null) {
      return false;
    }
    return RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(this!);
  }

  double toDouble() {
    return double.tryParse(this ?? '') ?? 0;
  }

  bool get containsOperators {
    if (this == null) {
      return false;
    }
    if (this!.contains("+") ||
        this!.contains("-") ||
        this!.contains("*") ||
        this!.contains("/")) {
      return true;
    }
    return false;
  }

  double get toDoubleAndNullIfZero {
    try {
      return double.tryParse(this!) ?? 0;
    } catch (e) {
      return 0;
    }
  }
}
