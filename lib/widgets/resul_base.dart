import 'package:flutter/material.dart';

class SubResult extends StatelessWidget {
  final String text;

  const SubResult({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: Text(
        text,
        style: Theme.of(context).textTheme.subtitle2!.copyWith(
              color: Colors.amber,
            ),
      ),
    );
  }
}
