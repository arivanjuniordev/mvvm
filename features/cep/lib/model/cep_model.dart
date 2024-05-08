class CepModel {
  final String cep;
  final String logradouro;
  final String bairro;
  final String complemento;
  final String localidade;
  final String uf;

  const CepModel({
    required this.cep,
    required this.logradouro,
    required this.bairro,
    required this.complemento,
    required this.localidade,
    required this.uf,
  });
}
