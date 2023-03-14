
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../utils/constans.dart';

class AppBarItem extends StatelessWidget {
  final String title;
  final Widget? sufixWidget;
  final Widget? prefixWidget;
  final Color? backgroudColor;
  final EdgeInsets? edgeInsets;
  final bool? showLeading;
  final bool? showBorderBottom;
  const AppBarItem({
  super.key,
  required this.title,
  this.sufixWidget,
  this.prefixWidget,
  this.showLeading = true,
  this.edgeInsets,
  this.backgroudColor,
  this.showBorderBottom = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: showLeading == true
          ? Padding(
        padding: EdgeInsets.only(
          left: 26.w,
        ),
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 15.w,
          ),
        ),
      )
          : prefixWidget ?? const SizedBox(),
      elevation: 0,
      backgroundColor: backgroudColor ?? Colors.white,
      shape: Border(
        bottom: BorderSide(
          color: showBorderBottom == true
              ? Colors.black
              : Colors.transparent,
          width: 1,
        ),
      ),
      centerTitle: true,
      title: Text(
        title.toString(),
        style: TextStyle(
          color: Colors.black,
          //fontFamily: Constants.cairoBold,
          fontWeight: FontWeight.w700,
          fontSize: 16.sp,
        ),
      ),
      actions: [
        sufixWidget != null
            ? Center(
          child: Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: sufixWidget!,
          ),
        )
            : const SizedBox(),
      ],
    );
  }
}
