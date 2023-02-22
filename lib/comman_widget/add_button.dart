import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color textcolor;
  final Color bgcolor;
  final String text;
  double fontsize;
  IconData? icondata;
  double? widthSize;
  double? heightSize;
  CustomButton(
      {super.key,
      required this.textcolor,
      required this.bgcolor,
      required this.text,
      // required this.widthSize,
      // required this.heightSize,
      required this.fontsize,
      this.icondata});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: MediaQuery.of(context).size.height * .05,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
            color: bgcolor, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icondata,
                color: Theme.of(context).colorScheme.primary,
              ),
              Text(
                text,
                style: TextStyle(
                  color: textcolor,
                  fontSize: fontsize,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
