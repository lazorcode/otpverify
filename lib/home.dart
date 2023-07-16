import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyGhar extends StatefulWidget {
  String name;
  MyGhar({super.key, required this.name});

  @override
  State<MyGhar> createState() => _MyGharState();
}

class _MyGharState extends State<MyGhar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Image.asset(
                'assets/Homescreen responsive.png',
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, top: 50),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Hi , ${widget.name}!',
                  style: TextStyle(
                    fontSize: 21,
                    color: Color(0xff6318AF),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
