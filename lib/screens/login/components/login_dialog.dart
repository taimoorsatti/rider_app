import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rider_app/utils/constans.dart';

import '../../../widget/flat_Button_Widget.dart';
import 'mobil_phone_textfield.dart';

class LoginDialog extends StatelessWidget {
  const LoginDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height * 0.5,
          width: 350,
          padding: const EdgeInsets.only(left: 15, right: 15, top: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text("Welcome Back,",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      letterSpacing: 0.47,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              SizedBox(
                height: 5,
              ),
              Text("Sign in to continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13,
                      letterSpacing: 0.47,
                      fontWeight: FontWeight.w400,
                      color: Colors.black)),
              SizedBox(
                height: 10,
              ),
              FlatButtonWidget(btnColor: Constants.colorPrimary,
                btnTxt: 'Login',
                height: 40),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
