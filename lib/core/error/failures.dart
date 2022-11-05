abstract class Failure {
  Failure(this.message);
  final String message;
}

class DatabaseInsertFailure extends Failure {
  DatabaseInsertFailure(super.message);
}
