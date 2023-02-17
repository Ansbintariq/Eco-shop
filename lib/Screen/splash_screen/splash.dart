import 'dart:async';

import 'package:eco_shop/Screen/home_screen/home_screen.dart';
import 'package:eco_shop/Themes/colors.dart';
import 'package:eco_shop/Themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () => Get.to(() => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/cart.png",
                  color: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(.2),
                  height: MediaQuery.of(context).size.height * .4,
                  width: MediaQuery.of(context).size.width * .5,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.19,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/cart.png",
                  height: MediaQuery.of(context).size.height * .05,
                  width: MediaQuery.of(context).size.width * .08,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
                Text(
                  "  Eco Shop",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "  Buy grocery and feed yourself ",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
