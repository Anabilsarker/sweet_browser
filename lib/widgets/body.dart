import 'package:flutter/material.dart';
import 'package:sweet_browser/styles/sk.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return body();
  }

  Widget body() {
    return Container(
      decoration: bodyBackground(),
      child: row(),
    );
  }

  BoxDecoration bodyBackground() {
    return const BoxDecoration(
      gradient: RadialGradient(
        colors: [Color(0xff1c7aaa), Color(0xff032a45)],
        stops: [0.1, 1.0],
        radius: 2.5,
        center: Alignment.topRight,
      ),
    );
  }

  Column row() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            sk.card(),
            sk.card(image: 'assets/images/sweet browser asset 1.jpg'),
            sk.card(),
          ],
        ), // Row 1 Column 1
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            sk.card(),
          ],
        ), // Row 2 Column 1
      ],
    );
  }

  TextField textField() {
    return const TextField(
      style: TextStyle(
        backgroundColor: Colors.white,
        overflow: TextOverflow.visible,
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.start,
      decoration: InputDecoration(hintText: 'Click here to search'),
    );
  }

  void shit() {}
}
