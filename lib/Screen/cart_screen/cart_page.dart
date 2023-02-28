import 'package:eco_shop/Screen/cart_screen/cart_controller.dart';
import 'package:eco_shop/comman_widget/add_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatefulWidget {
  CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final controller = Get.put(AddCart());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        notchMargin: 4.0,
        height: MediaQuery.of(context).size.height * .134,
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Total Amount"),
                  Text("${controller.tototalPrice.toString()}\$")
                ],
              ),
            ),
            CustomButton(
              textcolor: Colors.white,
              bgcolor: Theme.of(context).colorScheme.primary,
              text: "check out",
              fontsize: 12,
            )
          ],
        ),
      ),
      appBar: AppBar(
        leadingWidth: 30,
        leading: RawMaterialButton(
          constraints: const BoxConstraints(minWidth: 20.0, minHeight: 20.0),
          child: Icon(
            Icons.arrow_back,
            size: 16,
          ),
          shape: CircleBorder(),
          fillColor: Theme.of(context).colorScheme.primary,
          onPressed: () {
            Get.back();
          },
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                RawMaterialButton(
                  elevation: 0,
                  constraints:
                      const BoxConstraints(minWidth: 0.0, minHeight: 0.0),
                  child: GetBuilder(
                    init: AddCart(),
                    builder: (value) => InkWell(
                      child: IconButton(
                          onPressed: () {
                            Get.to(() => CartPage());
                          },
                          icon: Badge.count(
                            textStyle: Theme.of(context).textTheme.bodySmall,
                            textColor:
                                Theme.of(context).colorScheme.onBackground,
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
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
                Text(
                  "Items in your Cart",
                  style: Theme.of(context).textTheme.labelLarge,
                )
              ],
            ),
            Obx(
              () => ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                primary: false,
                itemCount: controller.cartList.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(8),
                    elevation: 2,
                    shadowColor: Theme.of(context).colorScheme.primary,
                    child: Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      height: MediaQuery.of(context).size.height * .18,
                      width: MediaQuery.of(context).size.width * .8,
                      color: Theme.of(context).colorScheme.onBackground,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * .2,
                            width: MediaQuery.of(context).size.width * .35,
                            decoration: BoxDecoration(),
                            child: Image.asset(
                                controller.cartList[index].img ?? " "),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * .2,
                            width: MediaQuery.of(context).size.width * .42,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          "${controller.cartList[index].title ?? "null"}",
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .outline)),
                                      Text(
                                        "\$${controller.cartList[index].offPrice!.toString()}",
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .surface),
                                      ),
                                    ],
                                  ),
                                ),
                                // Text("price"),
                                Row(
                                  children: [
                                    RawMaterialButton(
                                        constraints:
                                            BoxConstraints.tight(Size(25, 25)),
                                        onPressed: () {
                                          controller.decrement(index);
                                          // var test = controller
                                          //         .cartList[index].quantity *
                                          //     controller
                                          //         .cartList[index].offPrice;
                                          // print(test);
                                        },
                                        child: Icon(Icons.remove, size: 16),
                                        shape: new CircleBorder(),
                                        elevation: 5,
                                        fillColor: Theme.of(context)
                                            .colorScheme
                                            .primary),
                                    Text(controller.cartList[index].quantity!
                                        .toString()),
                                    Text(controller.cartList[index].unit
                                        .toString()),
                                    RawMaterialButton(
                                        constraints:
                                            BoxConstraints.tight(Size(25, 25)),
                                        onPressed: () {
                                          controller.increment(index);
                                          // var test = controller
                                          //         .cartList[index].quantity *
                                          //     controller
                                          //         .cartList[index].offPrice;
                                          //    print(test);
                                        },
                                        child: Icon(Icons.add, size: 16),
                                        shape: new CircleBorder(),
                                        elevation: 5,
                                        fillColor: Theme.of(context)
                                            .colorScheme
                                            .primary),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * .2,
                            width: MediaQuery.of(context).size.width * .1,
                            child: IconButton(
                                onPressed: () {
                                  controller.delete(index);
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                )),
                          ),
                          SizedBox(),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
