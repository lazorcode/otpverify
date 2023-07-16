import 'package:flutter/material.dart';
import 'package:otpveri/content.dart';
import 'package:otpveri/phone.dart';
class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(height: 29,width: 70,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushNamedAndRemoveUntil(context, 'phone', (route) => false);
                  }, child: Text('Skip',style: TextStyle(color: Color(0xff6318AF)),),
                    style: ElevatedButton.styleFrom(primary: Colors.indigo.shade100,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Image.asset(
                          contents[i].image, width: 350,
                          height: 350,
                        ),
                        Text(
                          contents[i].title,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          contents[i].discription,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                      (index) => buildDot(index, context),
                ),
              ),
            ),
            SizedBox(height: 20,),
            OutlinedButton(onPressed: (){
              if (currentIndex == contents.length - 1) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MyHome()
                  ),
                );
              }
              _controller.nextPage(
                duration: Duration(milliseconds: 100),
                curve: Curves.bounceIn,
              );
            },style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(10),
              onPrimary: Colors.indigo.shade200
            ), child: Container(padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,color: Color(0xff6318AF)
                ),child: Icon(Icons.arrow_forward,color: Colors.white,),)),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 7,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff6318AF)
      ),
    );
  }
}
