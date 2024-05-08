import 'package:core/custom_error.dart';

class DataSourceError extends CustomError {
  DataSourceError({required super.message, required super.stackTrace});
}
