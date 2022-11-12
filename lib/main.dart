import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'clothes_question.dart';
import 'clothes_answer.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppSate();
  }
}

class MyAppSate extends State<MyApp> {
  void _iWasTapped() {
    setState(() {
      clothesIndex += 1;
    });
  }

  var clothes = [
    {
      'question': '1. Select pants type:',
      'answer': ['Jeans', 'Baggy Pants', 'Skinny', 'Flare', 'Cargo']
    },
    {
      'question': '2. Select shirt type:',
      'answer': ['T-shirt', 'Shirt', 'Sweater', 'Blouse', 'Turtleneck']
    },
    {
      'question': '3. Select shoes type:',
      'answer': ['Boots', 'Sneakers', 'Flip-flops', 'Topsiders', 'Slippers']
    }
  ];
  var clothesIndex = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Hello World",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("My clothes app"),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.all(8.0)),
                ClothesQuestion(clothes[clothesIndex]['question'] as String),
                ...(clothes[clothesIndex]['answer'] as List<String>)
                    .map((answer) {
                  return ClothesAnswer(_iWasTapped, answer);
                })
              ],
            ),
          ),
        ));
  }
}
