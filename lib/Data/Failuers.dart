abstract class Failures {
  String message;

  Failures(this.message);

  @override
  String toString() {
    return message;
  }
}

class NetworkError extends Failures {
  NetworkError(super.message);
}

class LocalError extends Failures {
  LocalError(super.message);
}
