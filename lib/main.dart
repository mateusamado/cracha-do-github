import 'package:cracha/bloc/profile_bloc.dart';
import 'package:cracha/data/DataRepository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'screens/widgets/paginabusca.dart';
import 'screens/widgets/paginacracha.dart';
import 'screens/GitProfile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GitProfile(),
      routes: {
        '/busca' :(context) => PaginaBusca(),
        '/cracha': (context) => PaginaCracha(),
      },
    );
  }
}
