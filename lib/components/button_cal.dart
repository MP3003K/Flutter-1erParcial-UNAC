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
      : bgColor = bgColor ?? const Color(0xff5E5E5E),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonStyle = TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: bgColor,
        side: const BorderSide(width: 1.2, color: Color(0xff2A2A2A)));
    return TextButton(
      style: buttonStyle,
      child: SizedBox(
        width: big
            ? MediaQuery.of(context).size.width / 2 - 16
            : MediaQuery.of(context).size.width / 3 - 16,
        height: MediaQuery.of(context).size.height / 15,
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
