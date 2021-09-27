import 'package:flutter/material.dart';

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
    final buttonStyle =
        TextButton.styleFrom(primary: Colors.white, backgroundColor: bgColor);
    return TextButton(
      style: buttonStyle,
      child: SizedBox(
        width: big
            ? MediaQuery.of(context).size.width / 2 - 16
            : MediaQuery.of(context).size.width / 3 - 16,
        height: MediaQuery.of(context).size.height / 11,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
          ),
        ),
      ),
      onPressed: () => onPressed(),
    );
  }
}
