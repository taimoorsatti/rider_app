import 'package:flutter/cupertino.dart';

class BackgroundWidget extends StatelessWidget {
  final String backImage;
  const BackgroundWidget({Key? key,required this.backImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("${backImage}"),
    );
  }
}
