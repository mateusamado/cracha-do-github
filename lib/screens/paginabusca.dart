import 'package:flutter/material.dart';
import '../main.dart';

class PaginaBusca extends StatelessWidget {
  const PaginaBusca({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Pagina busca'),
          ),
          body: Center(
              child: ElevatedButton(
            child: Text('Buscar'),
            onPressed: () {
              Navigator.pushNamed(context, '/cracha');
            },
          )),
        ),
      ),
    );
  }
}
