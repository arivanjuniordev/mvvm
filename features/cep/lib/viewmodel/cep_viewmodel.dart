import 'package:flutter/material.dart';
import '../repository/cep_repository.dart';
import '../view/cep_state.dart';

class CepViewModel extends ValueNotifier<CepState> {
  final ICepRepository _ceprepository;

  CepViewModel({required ICepRepository repository})
      : _ceprepository = repository,
        super(InitCepState());

  void getCep({required String cep}) async {
    value = LoadingCepState();

    final result = await _ceprepository.getCep(cep);

    result.fold((success) {
      value = SucessCepState(cep: success);
    }, (failure) {
      value = ErrorCepState(error: failure);
    });
  }
}
