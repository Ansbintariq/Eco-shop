// ignore_for_file: sort_child_properties_last

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eco_shop/Mock/mock_data.dart';
import 'package:eco_shop/Themes/colors.dart';
import 'package:eco_shop/comman_widget/Catagory_widget.dart';
import 'package:eco_shop/comman_widget/vagitable_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final CarouselController carouselController = CarouselController();
  var mockData = MockData().productData;
  RxInt currentIndex = 1.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15, 40, 15, 15),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            opacity: .2,
                            image: AssetImage(
                              "images/vector.png",
                            ))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "images/cart.png",
                                  height:
                                      MediaQuery.of(context).size.height * .04,
                                  width: MediaQuery.of(context).size.width * .1,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                ),
                                Text(
                                  "  Eco Shop",
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Badge.count(
                                  textStyle:
                                      Theme.of(context).textTheme.labelSmall,
                                  textColor:
                                      Theme.of(context).colorScheme.outline,
                                  backgroundColor:
                                      Theme.of(context).colorScheme.onError,
                                  smallSize: 5,
                                  count: 2,
                                  child: Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground,
                                    size: 30,
                                  ),
                                )),
                          ],
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .06,
                          width: MediaQuery.of(context).size.width * .9,
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                fillColor:
                                    Theme.of(context).colorScheme.onBackground,
                                filled: true,
                                hintText: "Search products",
                                border: OutlineInputBorder()),
                          ),
                        )
                      ],
                    ),
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
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Market Catagory",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text("See all"),
                    ],
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.14,
                      width: MediaQuery.of(context).size.width * 1,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: MockData().cat_data.length,
                        itemBuilder: (context, index) {
                          return CatagoryWidget(
                            cat_Name: MockData().cat_data[index]["text"],
                            img: Image.asset(MockData().cat_data[index]["img"]),
                          );
                        },
                      )),
                ],
              ),
            ),
            Column(
              children: [
                Stack(
                  children: [
                    CarouselSlider(
                      items: MockData()
                          .sliderImg
                          .map((e) => Builder(builder: (BuildContext context) {
                                return Container(
                                  margin: EdgeInsets.all(20),
                                  width: MediaQuery.of(context).size.width * 1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                              e['title'],
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .005,
                                          ),
                                          Text(
                                            e['heading'],
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge,
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .005,
                                          ),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: Row(
                                                children: [
                                                  Text("Shop now"),
                                                  Icon(
                                                    Icons.arrow_forward_ios,
                                                    size: 15,
                                                  )
                                                ],
                                              ))
                                        ],
                                      ),
                                      Container(
                                        child: Image.asset(
                                          e["img_path"],
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }))
                          .toList(),
                      carouselController: carouselController,
                      options: CarouselOptions(
                        height: MediaQuery.of(context).size.height * 0.24,
                        autoPlay: true,
                        // scrollPhysics: BouncingScrollPhysics(),
                        aspectRatio: 2,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          currentIndex.value = index;

                          // print(currentIndex.value);
                        },
                      ),
                    ),
                    Positioned(
                        top: 140,
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: MockData().sliderImg.asMap().entries.map(
                            (e) {
                              return GestureDetector(
                                onTap: () =>
                                    carouselController.animateToPage(e.key),
                                child: Obx(
                                  () => Container(
                                    margin: EdgeInsets.all(2),
                                    width:
                                        currentIndex.value == e.key ? 17 : 17,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: currentIndex.value == e.key
                                          ? Theme.of(context)
                                              .colorScheme
                                              .primary
                                          : Color.fromARGB(255, 188, 188, 186),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ).toList(),
                        ))
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Populor",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text("See all"),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.35,
                          width: MediaQuery.of(context).size.width * 1,
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: mockData.length,
                            itemBuilder: (context, index) {
                              return ProductCard(
                                  title: mockData[index]['title'],
                                  price: mockData[index]['price'],
                                  offPrice: mockData[index]['offPrice'],
                                  img: Image.asset(
                                    mockData[index]['img'],
                                  ));
                            },
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
