import 'package:core/custom_error.dart';
import 'package:core/core.dart';

import 'adapter/cep_adapter.dart';
import 'repository_error.dart';

import 'datasource/cep_datasource.dart';
import '../model/cep_model.dart';

abstract class ICepRepository {
  AsyncResult<CepModel, CustomError> getCep(String cep);
}

class CepRepository implements ICepRepository {
  final ICepDatasource datasource;

  const CepRepository({
    required this.datasource,
  });

  @override
  AsyncResult<CepModel, CustomError> getCep(String cep) async {
    try {
      final response = await datasource.getCep(cep);

      final result = CepAdapter.fromJson(response);

      return Success(result);
    } catch (e, stackTrace) {
      final error = RepositoryError(
        message: e.toString(),
        stackTrace: stackTrace,
      );
      return Failure(error);
    }
  }
}
