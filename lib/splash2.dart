import 'dart:async';

import 'package:flutter/material.dart';
import 'package:otpveri/intro.dart';
class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () { Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Intro()));});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6318AF),
      body: Container(alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(padding:EdgeInsets.only(right: 23),child: Image.asset('assets/big logo.png',height: 124,width: 140,)),
            SizedBox(height: 10,),
            Image.asset('assets/TAGLINE.png',height: 70,width: 250,)

          ],
        ),
      ),
    );
  }
}
