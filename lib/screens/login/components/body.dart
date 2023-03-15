import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rider_app/utils/assets_image_paths.dart';
import 'package:rider_app/utils/constans.dart';

import 'background.dart';
import 'login_dialog.dart';
import 'mobil_phone_textfield.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Constants.colorPrimary,
          ),
           const Align(
            alignment: Alignment.topRight,
              child: BackgroundWidget(backImage: '${AppAssets.loginBack}',),

          ),
          Align(
            alignment: Alignment.center,
            child: LoginDialog(),
          ),

        ],
      ),
    );
  }
}
