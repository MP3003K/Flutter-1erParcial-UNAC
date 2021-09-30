import 'package:flutter/material.dart';

class LogoAplicacion extends StatelessWidget {
  const LogoAplicacion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/Ing.jpg"),
            ),
            const Spacer(),
            Text(
              "ENGINEERING CALCULATOR",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    fontWeight: FontWeight.w200,
                    height: 1.5,
                  ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
