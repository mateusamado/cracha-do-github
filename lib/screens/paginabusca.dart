import 'package:flutter/material.dart';
import '../main.dart';

class PaginaBusca extends StatefulWidget {
  @override
   _PaginaBuscaState createState()=> _PaginaBuscaState();

}

class _PaginaBuscaState extends State<PaginaBusca> {
  TextEditingController _usernameController = new TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Pagina busca'),
          ),
          body: Center(
            child:Column(
              children: <Widget> [
                TextFormField(
                  controller: _usernameController, 
                  style: TextStyle(color: Colors.grey), 
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color:Colors.grey),
                    hintText: "Digite seu usuário Github", 
                    border: InputBorder.none ),),
                ElevatedButton(
                  child: Text('Buscar'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/cracha');
                    },
                 ),
                
              ],
              
            ),
            ),
        ),
      ),
    );
  }

}


