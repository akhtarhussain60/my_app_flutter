import 'package:flutter/material.dart';

class DetailHeroAnimation extends StatelessWidget {
  const DetailHeroAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Hero(
            tag: "background",
            child: Image.asset(
              "assets/images/africa.jpg",
            )),
      ),
    );
  }
}
