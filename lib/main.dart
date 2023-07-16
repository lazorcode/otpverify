import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:otpveri/home.dart';
import 'package:otpveri/intro.dart';
import 'package:otpveri/namee.dart';
import 'package:otpveri/otp.dart';
import 'package:otpveri/phone.dart';
import 'package:otpveri/splash.dart';
import 'package:otpveri/splash2.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Capriola'),
    debugShowCheckedModeBanner: false,
    initialRoute: 'splash',
    routes: {
      'phone':(context)=>MyHome(),
      'otp':(context)=>MyOtp(),
      'home':(context)=>MyGhar(name: '',),
      'splash':(context)=>Splash1(),
      'splash2':(context)=>Splash2(),
      'intro':(context)=>Intro(),
      'namee':(context)=>EmailScreen()
    },
  ));
}

