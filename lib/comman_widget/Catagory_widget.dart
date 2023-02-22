import 'package:flutter/material.dart';

class CatagoryWidget extends StatelessWidget {
  final Image? img;
  final cat_Name;

  CatagoryWidget({super.key, this.cat_Name, this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 0, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .1,
              width: MediaQuery.of(context).size.width * .2,
              padding: EdgeInsets.all(20),
              color: Theme.of(context).colorScheme.primaryContainer,
              child: img,
            ),
            Text(cat_Name),
          ],
        ),
      ),
    );
  }
}
