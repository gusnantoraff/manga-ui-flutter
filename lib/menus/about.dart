import 'package:flutter/material.dart';

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage("assets/splash.png")),
          Text(
            "Manga ID",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Manga ID adalah sebuah aplikasi mobile yang dirancang untuk penggemar manga yang ingin membaca dan menjelajahi berbagai judul manga dengan kenyamanan dan kemudahan.",
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "~Gusnanto Rafly Juseptyan - V3422027~",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
