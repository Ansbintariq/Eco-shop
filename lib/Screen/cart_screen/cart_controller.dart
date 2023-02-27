import 'package:eco_shop/Mock/mock_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddCart extends GetxController {
  final cartList = <Products>[].obs;
  var mockData = MockData().productData;
  //RxList <Products> testList=<Products>[].obs;
  var itemCount;
  var items;
  onItemtap(Products products) {
    print("valing");
    int index = checkInCart(products.id!);
    print(products.quantity.runtimeType);
    if (index == -1) {

      cartList.value.add(
        Products(
            id: products.id!,
            title: products.title!,
            img: products.img,
            offPrice: products.offPrice,
            quantity: products.quantity),
      );
    } else {
      print(cartList[index].quantity.runtimeType);
      cartList[index].quantity=cartList[index].quantity+1;
    }
    getTotal();
    // checkInCart(id);
    update();

  }
  onUnitTap(Products item,String units){
    int unit=int.parse(units);
    int index = checkInCart(item.id!);

    if (index == -1) {
      cartList.value.add(
        Products(
            id: item.id!,
            title: item.title!,
            img: item.img!,
            offPrice: item.offPrice!,
            quantity: unit!),
      );
    } else {
      cartList[index].quantity= unit;
     // +cartList[index].quantity+unit
    }
    getTotal();
    // checkInCart(id);
    update();

  }


  delete(int index) {
    cartList.removeAt(index);
    getTotal();
    update();
    Get.snackbar(
      "Product Deleted",
      "Removed From Cart list",
      icon: const Icon(
        Icons.delete,
        color: Colors.white,
      ),
      barBlur: 40,
      isDismissible: true,
      duration: const Duration(seconds: 1),
      backgroundColor: Color.fromARGB(255, 242, 65, 65),
      colorText: Colors.white,
    );

    cartList.refresh();
  }

  increment(int index) {
    cartList[index].quantity++;
    getTotal();
    cartList.refresh();
  }

  decrement(int index) {
    if (cartList[index].quantity <= 1) {

      delete(index);
    } else {
      cartList[index].quantity--;
      getTotal();
      cartList.refresh();
    }
  }

  final tototalPrice = 0.0.obs;

  // multiCart(int index) {
  //   itemCount = cartList[index].quantity * cartList[index].offPrice;
  // }

  getTotal() {
    tototalPrice.value = 0;
    for (var k in cartList) {
      tototalPrice.value += k.quantity * k.offPrice;
      //  print(k.toJson());
    }
  }

  int checkInCart(String id) {
    //print("valjhftyfing");
    int index = -1;
    if (cartList.isNotEmpty) {
      for (int i = 0; i < cartList.length; i++) {
        if (id == cartList[i].id) {
          index = i;
        } else {
          index = -1;
        }
      }
    }
    return index;
  }
}
