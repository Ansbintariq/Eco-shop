import 'package:eco_shop/Mock/mock_data.dart';
import 'package:get/get.dart';

class SearchProducts {
  var isLoading = false.obs;

  final foundproduct = [].obs;
  // final foundproduct = <Products>[].obs;

  final allProducts = MockData().productData;
  getdata(String value) {
    RxList results = <Products>[].obs;

    //  print(allUsers);

    if (value.isEmpty) {
      results.value = allProducts;
      foundproduct.value = results;
    } else {
      results.value = allProducts
          .where((products) =>
              products.title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
      foundproduct.value = results;
    }
    //print(foundproduct.value);
    return foundproduct.value;
  }
}
