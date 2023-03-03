import 'package:eco_shop/Mock/mock_data.dart';
import 'package:eco_shop/repo/search_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Searchcontroller extends GetxController {
  //create instance
  static Searchcontroller instance = Get.find();
  TextEditingController searchtextController = TextEditingController();
  var isLoading = false.obs;
  final searchList = <Products>[].obs;

  getdata(value) async {
    searchList.value = await SearchProducts().getdata(value);
    //   print("list wala ===========================$searchList");
    //  print("list length ===========================${searchList.length}");
  }
}
