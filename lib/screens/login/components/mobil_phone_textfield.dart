import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_string.dart';
import '../../../utils/constans.dart';
import '../../../widget/app_text_field.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 15,
        color: Colors.black,
      ),
      //controller: widget.myController,
      //focusNode: widget.myFocusNode != null ? widget.myFocusNode : null,
      //obscureText: _showPassword,
      keyboardType: TextInputType.text,
      //textInputAction: widget.inputAction,
      decoration: InputDecoration(
        focusColor: Colors.green,
        border: InputBorder.none,
        hintText: "phone number",
        hintStyle: Theme.of(context).textTheme.caption?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: Colors.black45,
        ),
        fillColor: Colors.red,

      ),
      // onChanged: (str) {
      //   widget.onChanged(str);
      // },
      // onSubmitted: (str) {
      //   widget.onSubmited(str);
      // },
    );
  }
}
