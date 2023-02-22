import 'package:eco_shop/Mock/mock_data.dart';
import 'package:eco_shop/comman_widget/add_button.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final mockData = MockData().cat_data;
  final String title;
  final String price;
  final String offPrice;
  final Image img;
  ProductCard(
      {super.key,
      required this.title,
      required this.price,
      required this.offPrice,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.300,
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onBackground,
          borderRadius: BorderRadius.circular(5),
          // border: Border.all(
          //   width: .2,
          // )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.18,
                  width: MediaQuery.of(context).size.width * 1,
                  alignment: Alignment.center,
                  child: img,
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Icon(
                    Icons.favorite,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Theme.of(context).colorScheme.onError,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Theme.of(context).colorScheme.onError,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Theme.of(context).colorScheme.onError,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Theme.of(context).colorScheme.onError,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Theme.of(context).colorScheme.onError,
                      size: 20,
                    ),
                  ],
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    Text(
                      offPrice,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.surface),
                    ),
                  ],
                ),
              ],
            ),
            CustomButton(
                icondata: Icons.add,
                textcolor: Theme.of(context).colorScheme.primary,
                bgcolor: Theme.of(context).colorScheme.primary.withOpacity(.4),
                text: "Add to cart",
                fontsize: 13),
          ],
        ),
      ),
    );
  }
}
