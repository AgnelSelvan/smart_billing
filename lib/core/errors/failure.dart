class Failure {
  String message;
  int? code;
  Failure({required this.message, this.code});

  @override
  String toString() {
    return message;
  }
}

class ServerFailure extends Failure {
  ServerFailure({super.message = "Server Failure", super.code});
}
