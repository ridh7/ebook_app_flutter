import 'package:ebook_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Bitmap.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.display3,
                children: [
                  TextSpan(text: 'flamin'),
                  TextSpan(
                    text: 'go.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 16),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 15),
                        blurRadius: 30,
                        color: Color(0xFF666666).withOpacity(.2),
                      ),
                    ],
                  ),
                  child: Text(
                    'start reading',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
