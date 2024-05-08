abstract class CustomError implements Exception {
  final String message;
  final StackTrace stackTrace;

  CustomError({
    required this.message,
    required this.stackTrace,
  });
}
