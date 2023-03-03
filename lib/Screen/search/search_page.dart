import 'package:eco_shop/controller/searchcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPage extends GetView<Searchcontroller> {
  SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 253, 224, 130),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .06,
              width: MediaQuery.of(context).size.width * .9,
              child: TextField(
                controller: controller.searchtextController,
                onChanged: (value) {
                  controller.getdata(value);
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  fillColor: Theme.of(context).colorScheme.onBackground,
                  filled: true,
                  hintText: "Search products",
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Expanded(
                child: Obx(
              () => controller.searchList.isNotEmpty
                  ? ListView.builder(
                      itemCount: controller.searchList.length,
                      itemBuilder: (context, index) => Card(
                        child: ListTile(
                          title: Text(controller.searchList[index].title!),
                        ),
                      ),
                    )
                  : const Text(
                      'No results found',
                      style: TextStyle(fontSize: 24),
                    ),
            )),
          ],
        ),
      ),
    );
  }
}
