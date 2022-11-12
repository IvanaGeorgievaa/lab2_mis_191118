import 'package:flutter/material.dart';

class ClothesQuestion extends StatelessWidget {
  final String questionContent;

  const ClothesQuestion(this.questionContent, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(questionContent,
          style: const TextStyle(color: Colors.blue, fontSize: 20)),
    );
  }
}
