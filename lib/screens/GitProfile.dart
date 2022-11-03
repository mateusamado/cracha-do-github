import 'package:flutter/material.dart';
import 'widgets/paginabusca.dart';
import 'widgets/paginacracha.dart';

class GitProfile extends StatefulWidget {
  @override
  _GitProfileState createState() => _GitProfileState();
}

class _GitProfileState extends State<GitProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  Widget buildInitialTextField() {
    return Center();
  }

  Widget buildLoadingState() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
