import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Constants {
  /// app theme colors

  static const Color colorPrimary = Color(0xffFF6622);
  static const Color colorPrimaryVariant = Color(0xff3D3D3D);
  static const Color colorSecondary = Color(0xff979797);
  static const Color colorSecondaryVariant = Color(0xff262A34);
  static const Color colorListTileBorder = Color(0xffE9E9E9);

  static const Color colorBottomBorderAppBar = Color(0xffF0F0F0);
  static const Color colorBackground = Color(0xff1B2446);
  static const Color colorPrimaryLight = Color(0x60f57d26);

  static const Color colorSurface = Color(0xffB1A398);
  static const Color subtitleColor = Color(0xff2F2F2F);
  static const Color colorError = Color(0xffEB1730);
  static const Color colorOnPrimary = Color(0xffFCFDFD);
  static const Color colorOnSecondary = Color(0xff2F2F2F);
  static const Color colorOnBackground = Color(0xffffffff);
  static const Color colorOnSurface = Color(0xffffffff);
  static const Color colorOnError = Color(0xffFCFDFD);
  static const Color colorOnBottomSheet = Color(0xff0C1120);
  static const Color colorOnIcon = Color(0xff6D3F32);
  static const Color colorOnBorder = Color(0xff707070);
  static const Color colorTextLight = Color(0xffB4B4B4);
  static const Color colorGreen = Color(0xff34B861);
  static const Color colorTextLight2 = Color(0xffF6F6F6);
  static const Color colorTextLight3 = Color(0xffE9E9E9);
  static const Color colorTextLight4 = Color(0xff6D6D6D);
  static const Color colorIcon = Color(0xff2FACE7);

  static const Color fontDarkColor = Color(0xff242424);

  static const Color colorBlue = Color(0xff2FACE7);
  static const Color colorLightPrimary = Color(0xffFEF7F1);
  static const Color colorLightPink2 = Color(0xffFEF5EE);
  static const Color colorChat = Color(0xff353535);
  static const Color colorChatText = Color(0xffaaaaaa);

  static const Color colorLightPink = Color(0xffFEF7F1);

  static const Color colorOnCard = Color(0xff1F222A);
  static const Color colorOnContainer = Color(0xffF6F6F6);
  static const Color colorDotLine = Color(0xffD1D1D1);
  static const Color colorRestaurantDetail = Color(0xffF8F8F8);

  /// New Colors.
  static const Color colorProfileBox = Color(0xffC9CFD5);
  static const Color colorEditYellow = Color(0xffFFC608);

  /// app font families
  static const String cairoBold = 'Cairo_Bold';
  static const String cairoMedium = 'Cairo_Medium';
  static const String cairoRegular = 'Cairo_Regular';
  static const String cairoSemibold = 'Cairo_Semi_Bold';
  static const String cairoLight = 'Cairo_Light';

  static var arrowBackImage = Image.asset(
    'assets/icons/arrowForword.png',
    width: 6.93,
    height: 12.h,
  );

  static BorderRadius commonRadius = BorderRadius.circular(8.r);
  static BoxDecoration commonBorderBox = BoxDecoration(
    border: Border.all(color: Constants.colorTextLight3, width: 1.h),
    borderRadius: Constants.commonRadius,
  );

  static TextStyle normalDarkTextStyle({double? fontSize, Color? textColor}) =>
      TextStyle(
        color: textColor ?? colorOnSecondary,
        fontSize: fontSize ?? 14.sp,
        fontWeight: FontWeight.w500,
        fontFamily: cairoRegular,
      );
  static TextStyle smallTextStyle({double? fontSize, Color? textColor}) =>
      TextStyle(
        color: textColor ?? colorOnSecondary,
        fontSize: fontSize ?? 12.sp,
        fontWeight: FontWeight.w400,
        fontFamily: cairoRegular,
      );
  static TextStyle mediumDarkTextStyle({double? fontSize, Color? textColor}) =>
      TextStyle(
        color: textColor ?? colorOnSecondary,
        fontSize: fontSize ?? 16.sp,
        fontWeight: FontWeight.w600,
        fontFamily: cairoRegular,
      );
  static TextStyle semiBoldTextStyle({double? fontSize, Color? textColor}) =>
      TextStyle(
        color: textColor ?? colorOnSecondary,
        fontSize: fontSize ?? 14.sp,
        fontWeight: FontWeight.w700,
        fontFamily: cairoRegular,
      );
  static TextStyle boldDarkTextStyle({double? fontSize, Color? textColor}) =>
      TextStyle(
        color: textColor ?? colorOnSecondary,
        fontSize: fontSize ?? 16.sp,
        fontWeight: FontWeight.w700,
        fontFamily: cairoBold,
      );

  static TextStyle geryTextStyle(
      {double? fontSize, Color? textColor, FontWeight? fontWeight}) =>
      TextStyle(
        color: textColor ?? colorTextLight,
        fontSize: fontSize ?? 14.sp,
        fontWeight: fontWeight ?? FontWeight.w400,
        fontFamily: cairoRegular,
      );
}
