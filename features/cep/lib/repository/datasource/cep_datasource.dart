import 'package:core/core.dart';
import 'datasource_error.dart';

abstract class ICepDatasource {
  Future<Map<String, dynamic>> getCep(String cep);
}

class CepDatasource implements ICepDatasource {
  final Dio http;

  const CepDatasource({
    required this.http,
  });

  @override
  Future<Map<String, dynamic>> getCep(String cep) async {
    try {
      final response = await http.get("https://viacep.com.br/ws/$cep/json/");

      return response.data;
    } catch (e, stack) {
      throw DataSourceError(
        message: e.toString(),
        stackTrace: stack,
      );
    }
  }
}
