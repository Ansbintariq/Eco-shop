import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eco_shop/Screen/cart_screen/cart_page.dart';
import 'package:eco_shop/Screen/home_screen/home_screen.dart';
import 'package:eco_shop/Screen/product/product_details_page.dart';
import 'package:eco_shop/Screen/splash_screen/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var indx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        onTap: (selectedIndex) {
          setState(() {
            indx = selectedIndex;
          });
          print(indx);
        },
        index: indx,
        items: [
          Icon(
            Icons.home,
            color: Theme.of(context).colorScheme.primary,
          ),
          Icon(Icons.shopping_bag),
          Icon(Icons.person),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: getSelectedWidget(index: indx),
      ),
    );
  }

  Widget getSelectedWidget({required index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = HomeScreen();
        break;
      case 1:
        widget = HomeScreen();
        break;

      default:
        widget = HomeScreen();
        break;
    }
    return widget;
  }
}
