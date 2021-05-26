abstract class Failure {
  String get message;
}

class SimpleFailure extends Failure {
  final String message;

  SimpleFailure(this.message);
}
