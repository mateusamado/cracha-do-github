import 'package:flutter/material.dart';

class Cracha extends StatefulWidget {
  const Cracha({super.key});

  @override
  State<Cracha> createState() => _CrachaState();
}

class _CrachaState extends State<Cracha> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 550,
      child: Stack(
        children: [
          Column(children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(80, 43, 147, 1),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
            ),
            Container(
              width: 350,
              height: 400,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(238, 237, 245, 1),
                  border: Border.all(
                      color: Color.fromRGBO(80, 43, 147, 1), width: 2),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20))),
              child: Column(
                children: [
                  SizedBox(height: 100),
                  Text(
                    'Joaovitormoitinho',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '12412536523',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('João Vitor Dutra Moitinho',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500))
                ],
              ),
            ),
          ]),
          Container(
            width: 180,
            height: 180,
            margin: EdgeInsets.only(left: 85, top: 50),
            decoration: BoxDecoration(
                color: Colors.blue,
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
              backgroundImage: NetworkImage(
                'https://st.depositphotos.com/1020341/4233/i/450/depositphotos_42333899-stock-photo-portrait-of-huge-beautiful-male.jpg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
