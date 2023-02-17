import 'package:eco_shop/Themes/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "images/cart.png",
                              height: MediaQuery.of(context).size.height * .04,
                              width: MediaQuery.of(context).size.width * .06,
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                            Text(
                              "  Eco Shop",
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.shopping_cart_outlined))
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          fillColor: Theme.of(context).colorScheme.onBackground,
                          filled: true,
                          border: OutlineInputBorder()),
                    )
                  ],
                ),
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(20, 30),
                      bottomRight: Radius.elliptical(20, 30)),
                  color: Theme.of(context).colorScheme.secondaryContainer,
                ),
              ),
            ],
          ),
          Column(
            children: [Text("data")],
          )
        ],
      ),
    );
  }
}
