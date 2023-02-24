import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color textcolor;
  final Color bgcolor;
  Color? iconcolor;
  final String text;

  double fontsize;
  IconData? icondata;
  double? widthSize;
  double? heightSize;
  CustomButton({
    super.key,
    required this.textcolor,
    required this.bgcolor,
    required this.text,
    this.widthSize,
    this.heightSize,
    required this.fontsize,
    this.icondata,
    this.iconcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: heightSize ?? MediaQuery.of(context).size.height * .05,
        width: widthSize ?? MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
            color: bgcolor, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icondata,
                color: iconcolor ?? Theme.of(context).colorScheme.primary,
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
