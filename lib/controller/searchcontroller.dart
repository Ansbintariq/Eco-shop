import 'package:eco_shop/Mock/mock_data.dart';
import 'package:eco_shop/repo/search_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Searchcontroller extends GetxController {
  //create instance
  static Searchcontroller instance = Get.find();
  TextEditingController searchController = TextEditingController();
  var isLoading = false.obs;

  getdata(value) async {
    await SearchProducts().getdata(searchController.text);
  }
}
