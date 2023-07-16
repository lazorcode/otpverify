import 'package:flutter/material.dart';
import 'package:otpveri/home.dart';
class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  TextEditingController _name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.black87,)),
      ),
      body: Container(padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Text('Just a Step away !',style: TextStyle(fontSize: 20),),
            SizedBox(height: 30,),
            Container(padding: EdgeInsets.symmetric(horizontal: 20),decoration: BoxDecoration(
                border: Border.all(width: 1,
                    color: Colors.grey),
                borderRadius: BorderRadius.circular(10)
            ),
              child: TextField(
                controller: _name,
                decoration: InputDecoration(
                  hintText: 'Full Name*',
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none
              ),),
            ),
            SizedBox(height: 20,),
            Container(padding: EdgeInsets.symmetric(horizontal: 20),decoration: BoxDecoration(
                border: Border.all(width: 1,
                    color: Colors.grey),
                borderRadius: BorderRadius.circular(10)
            ),
              child: TextField(
                decoration:InputDecoration(
                    hintText: 'Email ID*',
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none
                ),
              ),
            ),
            Spacer(),
            SizedBox(height: 45,width: double.infinity,
              child: ElevatedButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyGhar(
                  name: _name.text,)));}, child: Text("Let's Start"),style: ElevatedButton.styleFrom(primary: Color(0xff6318AF),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
            ),
            SizedBox(height: 15,)
          ],
        ),
      ),
    );
  }
}
