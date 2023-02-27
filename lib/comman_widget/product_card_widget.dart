import 'package:eco_shop/Mock/mock_data.dart';
import 'package:eco_shop/Screen/cart_screen/cart_controller.dart';
import 'package:eco_shop/Screen/cart_screen/cart_page.dart';
import 'package:eco_shop/Screen/home_screen/home_screen.dart';
import 'package:eco_shop/Screen/product/product_details_page.dart';
import 'package:eco_shop/comman_widget/add_button.dart';
import 'package:eco_shop/comman_widget/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  Products product;
  ProductCard({super.key, required this.product});

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
          children: [
            GestureDetector(
              onTap: () {
                Get.to(() => ProductWidget(), arguments: {"product": product});
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.18,
                        width: MediaQuery.of(context).size.width * 1,
                        alignment: Alignment.center,
                        child: Image.asset(product.img!),
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
                        product.title!,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            product.price!,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.error,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          Text(
                            "  \$${product.offPrice!}",
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.surface),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            GetBuilder(
              init: AddCart(),
              builder: (value) => InkWell(
                onTap: () {
                  // Get.to(() => BottomBar(), arguments: product);
                  value.onItemtap(product);
                },
                child: CustomButton(
                    icondata: Icons.add,
                    textcolor: Theme.of(context).colorScheme.primary,
                    bgcolor:
                        Theme.of(context).colorScheme.primary.withOpacity(.4),
                    text: "Add to cart",
                    fontsize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
