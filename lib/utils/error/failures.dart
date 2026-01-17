abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure([super.message = 'Error en el servidor']);
}

class CacheFailure extends Failure {
  CacheFailure() : super('No hay datos guardados');
}