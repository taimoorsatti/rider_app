


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rider_app/screens/login/components/body.dart';

import '../../controllers/login/login_controller.dart';
import '../../widget/coustom_app_bar.dart';



class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body:  const Body(),


    );
  }
  PreferredSize get _appBar => PreferredSize(
    preferredSize: Size.fromHeight(56.h),
    child: const AppBarItem(
      title: 'Reports',
      showBorderBottom: false,
      showLeading: false,
    ),
  );



}
