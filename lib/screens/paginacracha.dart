import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../main.dart';
import '../components/cracha.dart';

class PaginaCracha extends StatelessWidget {
  const PaginaCracha({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
              leading: Builder(
                builder: (BuildContext ctt) {
                  return IconButton(
                    icon: const Icon(Icons.navigate_before),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    tooltip: MaterialLocalizations.of(ctt).openAppDrawerTooltip,
                  );
                },
              ),
              title: Text('Crachá Github'),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.download),
                  onPressed: () {},
                ),
              ]),
          body: Stack(
            children: [
              Cracha(),
            ],
          ),
        ),
      ),
    );
  }
}
