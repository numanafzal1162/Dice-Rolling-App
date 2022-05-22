import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: dice(),
        ),
      ),
    ),
  );
}

class dice extends StatefulWidget {
  const dice({Key? key}) : super(key: key);

  @override
  State<dice> createState() => _diceState();
}

class _diceState extends State<dice> {
  double dice = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Click On the Image to Role the DICE"),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            setState(
              () {
                dice = Random().nextInt(6) + 1;
              },
            );
          },
          child: Center(
            child: Image.asset("images/dice$dice.png"),
          ),
        ),
        const SizedBox(height: 20),
        Text("Your Numbers Are: $dice"),
      ],
    );
  }
}
