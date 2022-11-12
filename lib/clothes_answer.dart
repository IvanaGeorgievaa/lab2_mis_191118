import 'package:flutter/material.dart';

class ClothesAnswer extends StatelessWidget {
  final String answerContent;
  final VoidCallback tapped;

  const ClothesAnswer(this.tapped, this.answerContent, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: tapped,
        style: ElevatedButton.styleFrom(
            primary: Colors.green, minimumSize: const Size(120, 40)),
        child: Text(
          answerContent,
          style: const TextStyle(color: Colors.red),
        ));
  }
}
