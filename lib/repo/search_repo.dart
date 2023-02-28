import 'package:eco_shop/Mock/mock_data.dart';
import 'package:get/get.dart';

class SearchProducts {
  var isLoading = false.obs;
  var products = MockData().productData;
  RxList foundproduct = [].obs;
  RxList allProducts = [].obs;
  getdata(String value) {
    RxList results = [].obs;

    for (var e in products) {
      allProducts.add(e.toJson());
    }
    //  print(allUsers);

    if (value.isEmpty) {
      results = allProducts;
      foundproduct.value = results;
    } else {
      results.value = allProducts
          .where((products) =>
              products["title"].toLowerCase().contains(value.toLowerCase()))
          .toList();
      foundproduct.value = results;
    }
    print(foundproduct.value);
  }
}
