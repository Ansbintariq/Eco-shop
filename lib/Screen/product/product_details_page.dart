import 'package:eco_shop/Mock/mock_data.dart';
import 'package:eco_shop/Screen/cart_screen/cart_controller.dart';
import 'package:eco_shop/Screen/cart_screen/cart_page.dart';
import 'package:eco_shop/comman_widget/add_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductWidget extends StatelessWidget {
  Products product = Get.arguments['product'];
  //we are getting all data from mock data list with id
  String? selectedUnits;
  final controller = Get.put(AddCart());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.onPrimary,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            notchMargin: 4.5,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            height: MediaQuery.of(context).size.height * .1,
            color: Color.fromARGB(255, 255, 255, 255),
            clipBehavior: Clip.none,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RawMaterialButton(
                      elevation: 5,
                      constraints:
                          const BoxConstraints(minWidth: 55.0, minHeight: 55.0),
                      child: GetBuilder(
                        init: AddCart(),
                        builder: (value) => InkWell(
                          child: IconButton(
                              onPressed: () {
                                Get.to(() => CartPage());
                              },
                              icon: Badge.count(
                                textStyle:
                                    Theme.of(context).textTheme.bodySmall,
                                textColor:
                                    Theme.of(context).colorScheme.onBackground,
                                backgroundColor:
                                    Theme.of(context).colorScheme.primary,
                                smallSize: 2,
                                count: value.cartList.length,
                                child: Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Theme.of(context).colorScheme.outline,
                                  size: 30,
                                ),
                              )),
                        ),
                      ),
                      fillColor: Theme.of(context).colorScheme.primaryContainer,
                      onPressed: () {},
                    ),
                    GetBuilder(
                      init: AddCart(),
                      builder: (value) => InkWell(
                        onTap: () {
                          if (selectedUnits == null) {
                            value.onItemtap(product);
                          } else {
                            controller.onUnitTap(product, selectedUnits!);
                          }
                        },
                        child: CustomButton(
                          textcolor: Theme.of(context).colorScheme.onBackground,
                          bgcolor: Theme.of(context).colorScheme.primary,
                          text: "Add to Cart",
                          fontsize: 14,
                          heightSize: MediaQuery.of(context).size.height * .07,
                          widthSize: MediaQuery.of(context).size.width * .72,
                          icondata: Icons.add,
                          iconcolor: Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.onBackground,
          body: SingleChildScrollView(
            child: Column(
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
                      child: Image.asset(product.img!),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      right: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RawMaterialButton(
                            padding: EdgeInsets.only(left: 5),
                            constraints: const BoxConstraints(
                                minWidth: 30.0, minHeight: 30.0),
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 14,
                              color: Colors.white,
                            ),
                            shape: CircleBorder(),
                            fillColor: Theme.of(context).colorScheme.primary,
                            onPressed: () {
                              Get.back();
                            },
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
                              shape: BoxShape.circle,
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
                              color: Theme.of(context)
                                  .colorScheme
                                  .tertiaryContainer,
                              border: Border.all(
                                  width: 1,
                                  color: Theme.of(context).colorScheme.primary),
                            ),
                            child: Image.asset(product.img1!),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * .1,
                            width: MediaQuery.of(context).size.width * .22,
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .tertiaryContainer,
                              border: Border.all(
                                  width: 1,
                                  color: Theme.of(context).colorScheme.primary),
                            ),
                            child: Image.asset(product.img2!),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * .1,
                            width: MediaQuery.of(context).size.width * .22,
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .tertiaryContainer,
                              border: Border.all(
                                  width: 1,
                                  color: Theme.of(context).colorScheme.primary),
                            ),
                            child: Image.asset(product.img3!),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("VEGETABLE"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.title!,
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
                          Text("5 Review")
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            product.price!,
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          Text(
                            "  \$${product.offPrice}",
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.surface),
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
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(.2),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            product.unit!.contains("kg")
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('WEIGHT'),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .3,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .33,
                                        child: DropdownButtonFormField(
                                          hint: Text(
                                            'Kg',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                          ),
                                          items: ['1', '2', '3', '4', '5']
                                              .map((String value) {
                                            return DropdownMenuItem(
                                              value: value,
                                              child: Text(
                                                value + "kg",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium,
                                              ),
                                            );
                                          }).toList(),
                                          onChanged: (value) {
                                            selectedUnits = value;
                                          },
                                        ),
                                      ),
                                    ],
                                  )
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('BOXES'),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .3,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .33,
                                        child: DropdownButtonFormField(
                                          hint: Text(
                                            'Boxes',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                          ),
                                          items: ['1', '2', '3', '4', '5']
                                              .map((String value) {
                                            return DropdownMenuItem(
                                              value: value,
                                              child: Text(
                                                value + "box",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium,
                                              ),
                                            );
                                          }).toList(),
                                          onChanged: (value) {
                                            selectedUnits = value;
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
