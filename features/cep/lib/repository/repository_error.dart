import 'package:core/custom_error.dart';

class RepositoryError extends CustomError {
  RepositoryError({
    required super.message,
    required super.stackTrace,
  });
}
