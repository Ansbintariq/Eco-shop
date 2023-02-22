import 'package:eco_shop/Mock/mock_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Product extends StatelessWidget {
  const Product({super.key});

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
                color: Theme.of(context).colorScheme.onBackground,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .4,
                width: MediaQuery.of(context).size.width * 1,
                color: Theme.of(context)
                    .colorScheme
                    .secondaryContainer
                    .withOpacity(.4),
                child: Image.asset(MockData().productData[0]["img"]),
              ),
              Positioned(
                top: 20,
                left: 20,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      height: MediaQuery.of(context).size.height * .03,
                      width: MediaQuery.of(context).size.width * .06,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 18,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                    Text(
                      "Popular Sells",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Theme.of(context).colorScheme.surface,
                    )
                  ],
                ),
              ),
              Positioned(
                top: 60,
                right: 5,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * .07,
                      width: MediaQuery.of(context).size.width * .14,
                      decoration: BoxDecoration(
                        color: Theme.of(context)
                            .colorScheme
                            .onError
                            .withOpacity(.9),
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Text(
                        "-50\%",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .35,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * .1,
                      width: MediaQuery.of(context).size.width * .22,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.tertiaryContainer,
                        border: Border.all(
                            width: 1,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      child: Image.asset(MockData().productData[0]["img1"]),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .1,
                      width: MediaQuery.of(context).size.width * .22,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.tertiaryContainer,
                        border: Border.all(
                            width: 1,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      child: Image.asset(MockData().productData[0]["img2"]),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .1,
                      width: MediaQuery.of(context).size.width * .22,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.tertiaryContainer,
                        border: Border.all(
                            width: 1,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      child: Image.asset(MockData().productData[0]["img3"]),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("VEGETABLE"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tomato Long Sweet",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .04,
                      width: MediaQuery.of(context).size.width * .08,
                      child: Icon(
                        Icons.share,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(.3),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star, size: 18),
                    Icon(Icons.star, size: 18),
                    Icon(Icons.star, size: 18),
                    Icon(Icons.star, size: 18),
                    Icon(Icons.star, size: 18),
                    Text("Review")
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "\$9.99",
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    Text(
                      "\$6.99",
                      style: Theme.of(context).textTheme.titleMedium,
                    )
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Availability: ",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Flexible(
                          child: Text(
                        "232 products available ",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ))
                    ],
                  ),
                  height: MediaQuery.of(context).size.height * .04,
                  width: MediaQuery.of(context).size.width * .6,
                  decoration: BoxDecoration(
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(.2),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 80,
                      width: 120,
                      child: DropdownButtonFormField(
                        hint: Text(
                          'Gram',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        items: ['1000g', '500g', '200g', '100g']
                            .map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(
                              value,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
