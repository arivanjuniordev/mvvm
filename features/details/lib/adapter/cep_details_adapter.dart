import 'package:details/model/cep_details_model.dart';

import 'mapper_error.dart';

sealed class CepDetailsAdapter {
  static CepDetailsModel fromJson(Map<String, dynamic> json) {
    try {
      return CepDetailsModel(
        cep: json['cep'],
        logradouro: json['logradouro'],
        bairro: json['bairro'],
        complemento: json['complemento'],
        localidade: json['localidade'],
        uf: json['uf'],
      );
    } catch (e, stackTrace) {
      throw MapperError(
        message: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  static Map<String, dynamic> toMap(CepDetailsModel cepModel) {
    try {
      return {
        'cep': cepModel.cep,
        'logradouro': cepModel.logradouro,
        'bairro': cepModel.bairro,
        'complemento': cepModel.complemento,
        'localidade': cepModel.localidade,
        'uf': cepModel.uf,
      };
    } catch (e, stackTrace) {
      throw MapperError(
        message: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }
}
