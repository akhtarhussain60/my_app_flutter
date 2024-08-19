import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecondScreen extends StatelessWidget {
  var namefromhome;
  SecondScreen(this.namefromhome, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Name From Home : $namefromhome",
                style: const TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Back")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
