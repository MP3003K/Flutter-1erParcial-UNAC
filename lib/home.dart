import 'package:flutter/material.dart';

import 'components/common_drawer.dart';

class HomeDrawer extends StatefulWidget {
  static String ruta = "/";

  @override
  State<StatefulWidget> createState() {
    return _HomeDrawer();
  }
}

class _HomeDrawer extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejemplo menu tipo Drawer"),
      ),
      drawer: CommonDrawer.obtenerDrawer(context),
      body: Container(
        child: SafeArea(
            child: Column(
          children: const <Widget>[
            /* DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Examen.jpg")),
              ),
            )*/
            Text('Home sssssss')
          ],
        )),
      ),
    );
  }
}
