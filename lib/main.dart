import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rider_app/route_generator.dart';
import 'package:rider_app/screens/login/login_screen.dart';
import 'package:rider_app/utils/app_string.dart';
import 'package:rider_app/utils/constans.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(375,812),
      builder: (context,child){
        return  GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppText.APP_NAME,
          theme: _buildAppThemeData(),
          onGenerateRoute: RouteGenerator.generateRoute,
          initialRoute: '/',
          routes: {
            '/':(context)=> const LoginScreen(),
          },
        );
      },

    );
  }

  ThemeData _buildAppThemeData() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      colorScheme: _colorScheme,
      primaryColor: Constants.colorPrimary,
      unselectedWidgetColor: Constants.colorOnIcon,
      scaffoldBackgroundColor: Constants.colorOnSurface,
      errorColor: Constants.colorError,
    );
  }

 static const _colorScheme = ColorScheme(
    primary: Constants.colorPrimary,
    primaryContainer: Constants.colorPrimaryVariant,
    secondary: Constants.colorSecondaryVariant,
    secondaryContainer: Constants.colorSecondaryVariant,
    surface: Constants.colorSurface,
    background: Constants.colorBackground,
    error: Constants.colorError,
    onPrimary: Constants.colorOnPrimary,
    onSecondary: Constants.colorOnSecondary,
    onSurface: Constants.colorOnSurface,
    onBackground: Constants.colorOnBackground,
    onError: Constants.colorOnError,
    brightness: Brightness.light,
  );
}

