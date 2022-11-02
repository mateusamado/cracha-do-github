import 'package:flutter/material.dart';
import '../main.dart';

class PaginaBusca extends StatelessWidget {
  const PaginaBusca({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pagina busca'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: 320,
              height: 200,
              decoration: BoxDecoration(
                color: Color.fromRGBO(80, 43, 147, 1),
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/imagens/logo.png',
                    width: 100,
                    height: 130,
                  ),
                  Text(
                    'Crachá Virtual do Github',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 320,
              height: 180,
              decoration: BoxDecoration(
                color: Color.fromRGBO(238, 237, 245, 1),
                border:
                    Border.all(color: Color.fromRGBO(80, 43, 147, 1), width: 2),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20)),
              ),
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Digite seu usuário GitHub',
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 265,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(80, 43, 147, 1)),
                    child: Text(
                      'Pesquisar',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/cracha');
                    },
                  ),
                ),
              ]),
            ),
          ]),
        ),
      ),
    ));
  }
}
