import 'package:eco_shop/Screen/splash_screen/splash.dart';
import 'package:eco_shop/Themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Mythemes.lightTheme,
      darkTheme: Mythemes.darkTheme,
      themeMode: ThemeMode.system,
      home: const Splash_screen(),
    );
  }
}
