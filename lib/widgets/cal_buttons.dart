import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class CalculatorButtom extends StatelessWidget {
  final Color bgColor;
  final bool big;
  final String text;
  final Function onPressed;

  const CalculatorButtom(
      {Key? key,
      bgColor,
      this.big = false,
      required this.text,
      required this.onPressed})
      : bgColor = bgColor ?? const Color(0xff333333),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle = TextButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Colors.white,
        backgroundColor: bgColor);
    return Container(
      margin: const EdgeInsets.only(bottom: 10, right: 5, left: 5),
      child: TextButton(
        style: ButtonStyle,
        child: SizedBox(
          width: big ? 150 : 65,
          height: 65,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
            ),
          ),
        ),
        onPressed: () => onPressed(),
      ),
    );
  }
}
