import 'package:flutter/material.dart';
import 'package:whatsapp/uitls/color_recourses.dart';
import 'package:whatsapp/view/verify_phone_num/VerifyPhoneNumber.dart';


class WelcomScreen extends StatefulWidget {
  const WelcomScreen({Key? key}) : super(key: key);

  @override
  State<WelcomScreen> createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(height: 10.0,),
              Text('Welcome to WhatsApp',
                style: TextStyle(
                  fontSize: 28.0,
                    fontWeight: FontWeight.w600,
                    color: ColorResourse.textlightGreenColor
                ),),
              Image(image: AssetImage("images/welcomeS.png"),height: 240.0,),
              SizedBox(height: 20.0,),
              Text('Read our Privicy Policy. Tap "Agree and continue" to accept the Terms of Service',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                  color: ColorResourse.lightGrayColor
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                  backgroundColor: ColorResourse.darkGreenColor,
                ),
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyYourPhoneNumber()));
                  },
                  child: Text('AGREE AND CONTINUE',
                    style: TextStyle(
                      color: ColorResourse.whiteColor
                    ),
                  )),
              SizedBox(height: 16.0,),
              Column(
                children: [
                  Text('from'),
                  SizedBox(height: 3,),
                  Text('FACEBOOK',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: ColorResourse.greenColor,
                    ),
                  )
                ],
              )
              // SizedBox(height: 60.0,)
            ],
          ),
        ),
      ),
    );
  }
}
