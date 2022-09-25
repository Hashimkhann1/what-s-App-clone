import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/uitls/color_recourses.dart';
import 'package:whatsapp/view/welcome%20screen/welcome_screen.dart';


class Splash extends StatefulWidget {

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Center(child: Image(image: AssetImage('images/WhatsApp.png'),height: 90.0,)),
        Column(
          children: [
            Text("from"),
            SizedBox(height: 2.0,),
            Text('Facebook',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: ColorResourse.greenColor
              ),
            )
          ],
        )
        ],
      )
    )
    );
  }
}
