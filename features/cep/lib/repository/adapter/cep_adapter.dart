import 'mapper_error.dart';
import '../../model/cep_model.dart';

sealed class CepAdapter {
  static CepModel fromJson(Map<String, dynamic> json) {
    try {
      return CepModel(
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

  static Map<String, dynamic> toMap(CepModel cepModel) {
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
