import 'package:cep/cep_module.dart';
import 'package:details/adapter/cep_details_adapter.dart';
import 'package:details/details_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const CepModule(),
        '/details': (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;

          final cepDetails = CepDetailsAdapter.fromJson(args);

          return DetailsPage(cepDetailsModel: cepDetails);
        },
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
    );
  }
}
