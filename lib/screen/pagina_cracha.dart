import 'package:cracha_github/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class PaginaCracha extends StatefulWidget {
  final String username;
  const PaginaCracha({super.key, required this.username});
  @override
  State<PaginaCracha> createState() => _PaginaCrachaState();
}

class _PaginaCrachaState extends State<PaginaCracha> {
  var _init = true;
  var _isLoading = false;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    if (_init) {
      setState(() {
        _isLoading = true;
      });
      Provider.of<UserProvider>(context)
          .getUserProfile(widget.username)
          .then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    }
    _init = false;
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.username),
          backgroundColor: Color.fromRGBO(80, 43, 147, 1),
          centerTitle: true,
          elevation: 0,
        ),
        body: _isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 350,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(80, 43, 147, 1),
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(width: 100),
                          Text(
                            'Crachá GitHub',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 30),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.download),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 350,
                      height: 500,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(80, 43, 147, 1), width: 2),
                          color: Color.fromRGBO(238, 237, 245, 1),
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(20))),
                      child: Column(children: [
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(115, 0, 0, 0),
                                    offset: const Offset(4, 4),
                                    blurRadius: 3,
                                    spreadRadius: 1)
                              ]),
                          child: CircleAvatar(
                            radius: 100,
                            backgroundImage: NetworkImage(user.user.image),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          user.user.login,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'nome: ${user.user.name}',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'id: ${user.user.id.toString()}',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Container(
                          //Area para botar o QRCODE
                          width: 120,
                          height: 120,
                          color: Colors.red,
                        )
                      ]),
                    )
                  ],
                ),
              ));
  }
}
