import 'package:details/model/cep_details_model.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final CepDetailsModel cepDetailsModel;

  const DetailsPage({super.key, required this.cepDetailsModel});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  get cepDetailsModel => widget.cepDetailsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(cepDetailsModel.cep),
            Text(cepDetailsModel.bairro),
            Text(cepDetailsModel.localidade),
          ],
        ),
      ),
    );
  }
}
