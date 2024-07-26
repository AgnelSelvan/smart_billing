class Failure {
  String message;
  int? code;
  Failure({required this.message, this.code});

  @override
  String toString() {
    return message;
  }
}
