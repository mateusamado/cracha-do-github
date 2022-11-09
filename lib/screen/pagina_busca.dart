import './pagina_cracha.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaginaBusca extends StatefulWidget {
  @override
  PaginaBuscaState createState() => PaginaBuscaState();
}

class PaginaBuscaState extends State<PaginaBusca> {
  TextEditingController _userController = new TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  void submit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PaginaCracha(username: _userController.text)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          key: _formKey,
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: 300,
                height: 180,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(80, 43, 147, 1),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/imagens/logo.png',
                        width: 100,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Crachá Virtual do Github',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ]),
              ),
              Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(238, 237, 245, 1),
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(20)),
                    border: Border.all(
                        color: Color.fromRGBO(
                          80,
                          43,
                          147,
                          1,
                        ),
                        width: 2)),
                child: Column(children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        left: 15, right: 15, bottom: 15, top: 35),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: TextFormField(
                      controller: _userController,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Escreva um nome de um usuario GitHub';
                        }
                        return null;
                      },
                      onFieldSubmitted: (ctx) {
                        submit();
                      },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: 'Digite o nome do github',
                          border: InputBorder.none),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromRGBO(80, 43, 147, 1)),
                    child: TextButton(
                      onPressed: () {
                        submit();
                      },
                      child: Text(
                        'Pesquisar',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  )
                ]),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
