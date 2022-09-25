import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/uitls/color_recourses.dart';
import 'package:whatsapp/view/verify_phone_num/verificaation_code.dart';

class VerifyYourPhoneNumber extends StatefulWidget {
  const VerifyYourPhoneNumber({Key? key}) : super(key: key);

  @override
  State<VerifyYourPhoneNumber> createState() => _VerifyYourPhoneNumberState();
}

class _VerifyYourPhoneNumberState extends State<VerifyYourPhoneNumber> {
  String? countryCode;
  String? countryFlag;
  String? countryNumber;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Verify your phone number',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                    color: ColorResourse.textlightGreenColor
                  ),
                ),
                Text('WhatsApp will send an SMS Message to verify your phone number.Enter your country code and phone number.',
                  textAlign: TextAlign.center,
                  style: TextStyle(),
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.black,width: 2.0))
                      ),
                      child: TextButton(
                        onPressed: (){
                        showCountryPicker(
                          context: context,
                          countryListTheme: CountryListThemeData(
                              inputDecoration: InputDecoration(
                                  hintText: "Choose a country"
                              )
                          ),
                          favorite: ['PK'],
                          onSelect: (Country value){
                            // print(value.countryCode.toString());
                            // print(value.phoneCode.toString());
                            // print(value.flagEmoji);
                            countryCode = value.phoneCode;
                            countryFlag = value.flagEmoji;
                            setState(() {

                            });
                          },);
                      }, child:
                      Text(countryFlag == null ? 'Select your country' : countryFlag.toString(),style: TextStyle(fontSize: 20.0),),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40.0),
                            child: Text('+${countryCode == null ? '' : countryCode.toString()}'),
                          ),
                          SizedBox(width: 10.0,),
                          Expanded(
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                ),
                              )
                          )
                          // TextField(
                          //   decoration: InputDecoration(
                          //     hintText: 'Phone Number'
                          //   ),
                          // )
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: ColorResourse.greenColor,
                        padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 14.0)
                      ),
                        onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationCode()));
                        },
                        child: Text('NEXT',
                          style: TextStyle(
                            color: ColorResourse.whiteColor
                          ),
                        )
                    ),
                    SizedBox(height: 6.0,),
                    Text('Carrier SMS charge may apply',
                      style: TextStyle(
                        fontSize: 12.0,
                          color: ColorResourse.lightGrayColor),
                    )
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}
