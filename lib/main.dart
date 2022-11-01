import 'package:flutter/material.dart';
import 'screens/paginabusca.dart';
import 'screens/paginacracha.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/busca',
      routes: {
        '/busca': (context) => PaginaBusca(),
        '/cracha': (context) => PaginaCracha(),
      },
    );
  }
}
