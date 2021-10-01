import 'package:flutter/material.dart';

class ButtonNumb extends StatelessWidget {
  final bool white;
  final String text;
  final Function onPressed;

  const ButtonNumb(
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
        side: const BorderSide(width: 2, color: Colors.white));
    return TextButton(
      style: buttonStyle,
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 22,
        width: 300,
        child: Text(
          text,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: white ? Colors.black : Colors.white,
              ),
        ),
      ),
      onPressed: () => onPressed(),
    );
  }
}
