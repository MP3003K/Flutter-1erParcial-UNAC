import 'package:flutter/material.dart';

class ButtonResultado extends StatelessWidget {
  final bool white;
  final String text;
  final Function onPressed;

  const ButtonResultado(
      {Key? key,
      this.white = false,
      required this.text,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonStyle = TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: white ? Colors.white : Colors.black,
        side: const BorderSide(width: 1.2, color: Color(0xff2A2A2A)));
    return TextButton(
      style: buttonStyle,
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 22,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: white ? Colors.black : Colors.white,
                ),
          ),
        ),
      ),
      onPressed: () => onPressed(),
    );
  }
}
