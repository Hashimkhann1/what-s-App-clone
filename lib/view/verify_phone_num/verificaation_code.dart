import 'package:flutter/material.dart';
import 'package:whatsapp/uitls/color_recourses.dart';


class VerificationCode extends StatefulWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: <Widget>[
                Text('Verify +1 (000) 123-4567',style: TextStyle(color: ColorResourse.textlightGreenColor,fontSize: 18.0,fontWeight: FontWeight.w600),),
                SizedBox(height: 30.0,),
                Text('Wating to automatically detect an SMS sent to\n +1 (000) 123-4567. Wrong Number',
                  textAlign: TextAlign.center,
                ),
                
              ],
            ),
          ),
        )
    );
  }
}
