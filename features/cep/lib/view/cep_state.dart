import 'package:core/custom_error.dart';

import '../model/cep_model.dart';

abstract class CepState {}

class InitCepState extends CepState {}

class LoadingCepState extends CepState {}

class SucessCepState extends CepState {
  final CepModel cep;

  SucessCepState({
    required this.cep,
  });
}

class ErrorCepState extends CepState {
  final CustomError error;

  ErrorCepState({required this.error});
}
