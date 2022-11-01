import 'package:flutter/material.dart';

class Cracha extends StatelessWidget {
  const Cracha({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 16,
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height / 1.418918918918919,
            width: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    FlutterLogo(size: 100),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "3 TEA CUPS",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Text(
                          "Texto explicativo sobre o contéudo",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        child: Divider(color: Colors.red),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Text(
                          "Texto explicativo",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Text(
                          "Texto explicativo",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
