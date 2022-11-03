import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../main.dart';
import '../../components/cracha.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
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
