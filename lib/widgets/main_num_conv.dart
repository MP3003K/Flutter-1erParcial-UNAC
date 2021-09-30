import 'package:flutter/material.dart';

class NumberToChangeBase extends StatelessWidget {
  final String text;

  const NumberToChangeBase({required this.text, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, right: 20),
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(color: Colors.white, fontSize: 50),
        ),
      ),
    );
  }
}
