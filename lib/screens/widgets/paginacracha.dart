import 'package:cracha/screens/widgets/paginabusca.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../main.dart';
import '../../components/cracha.dart';

class PaginaCracha extends StatefulWidget {
  const PaginaCracha({super.key});

  @override
  State<PaginaCracha> createState() => _PaginaCrachaState();
}

class _PaginaCrachaState extends State<PaginaCracha> {
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
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const PaginaBusca()),
                      );
                    },
                    tooltip: MaterialLocalizations.of(ctt).openAppDrawerTooltip,
                  );
                },
              ),
              backgroundColor: Color.fromRGBO(80, 43, 147, 1),
              centerTitle: true,
              title: Text('Crachá Github'),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.download),
                  onPressed: () {},
                ),
              ]),
          body: Stack(
            children: [
              Center(child: Cracha()),
            ],
          ),
        ),
      ),
    );
  }
}
