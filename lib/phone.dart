import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class MyHome extends StatefulWidget {
  const MyHome({super.key});
  static String verify='';

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  TextEditingController countrycode = TextEditingController();
  var phone='';

  @override
  void initState() {
    countrycode.text='+91';
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Color(0xff6318AF),elevation: 0,),
      extendBodyBehindAppBar: true,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [Image.asset('assets/login.png',height: 400,width: MediaQuery.of(context).size.width,),
                Container(alignment:Alignment.center,padding: EdgeInsets.only(top: 93,right: 15),child: Image.asset('assets/big logo.png',
                  height: 80,width: 80,)),
              Container(alignment:Alignment.center,padding: EdgeInsets.only(top: 195),
                  child: Text('CraftMyPlate',style: TextStyle(fontSize: 28,color: Colors.white),)),
                Container(padding: EdgeInsets.only(right: 180,top: 360),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: Text('Login or Signup',
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),textAlign: TextAlign.start),
                ),]),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    SizedBox(height: 10,),
                    Container(decoration: BoxDecoration(
                        border: Border.all(width: 1,
                            color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)
                    ),
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          SizedBox(width: 40,
                            child: TextField(controller:countrycode ,
                              decoration: InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none
                              ),
                            ),),

                          Text('|',style: TextStyle(fontSize: 30,color: Colors.grey),),
                          SizedBox(width: 10,),
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              onChanged: (value){
                                phone=value;
                              },
                              decoration: InputDecoration(
                                  hintText: 'Enter Phone Number',
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none
                              ),
                            ),)
                        ],
                      ),)
                    ,
                    SizedBox(height: 15,),
                    SizedBox(height: 40,width: double.infinity,
                        child: ElevatedButton(onPressed: ()async{
                          await FirebaseAuth.instance.verifyPhoneNumber(
                            phoneNumber: '${countrycode.text+phone}',
                            verificationCompleted: (PhoneAuthCredential credential) {},
                            verificationFailed: (FirebaseAuthException e) {},
                            codeSent: (String verificationId, int? resendToken) {
                              MyHome.verify=verificationId;
                              Navigator.pushNamed(context, 'otp');
                            },
                            codeAutoRetrievalTimeout: (String verificationId) {},
                          );
                          // Navigator.pushNamed(context, 'otp');
                        }, child: Text('Continue'),style: ElevatedButton.styleFrom(primary: Color(0xff6318AF),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),)
                    ),
                    SizedBox(height: 179,),
                    Text('By Continuing, you agree to our',style: TextStyle(fontSize: 13,color: Colors.black45)),
                    Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                      TextButton(onPressed: (){}, child: Text('Terms of Service',style: TextStyle(fontSize: 15,color: Colors.black45,decoration: TextDecoration.underline),)),
                      TextButton(onPressed: (){}, child: Text('Privacy Policy',style: TextStyle(fontSize: 15,color: Colors.black45,decoration: TextDecoration.underline)))
                    ],)


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
