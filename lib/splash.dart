import 'dart:async';

import 'package:flutter/material.dart';
import 'package:otpveri/splash2.dart';
class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () { Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Splash2()));});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7E5B7),
      body: Stack(
        children: [
              Container(child: Image.asset(fit:BoxFit.fill,width:MediaQuery.of(context).size.width ,
              height: MediaQuery.of(context).size.height,'assets/Vector 3.png')),
          Container(padding: EdgeInsets.only(bottom: 50,right: 20),alignment:Alignment.center,child: Image.asset('assets/big logo.png',height: 110,width: 150,)),
          Container(alignment:Alignment.center,padding: EdgeInsets.only(top: 120),child: Text('Welcome',style: TextStyle(color: Color(0xffF7E5B7),fontSize: 32),))
            ],
      ),
    );
  }
}
