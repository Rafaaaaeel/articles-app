import 'package:article_app/src/core/network/errors/failure.dart';

class ServerFailure extends Failure {
  final int? statusCode;

  const ServerFailure(super.errorMessage, this.statusCode);
}
