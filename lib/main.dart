import 'package:flutter/material.dart';
import 'package:task1/text_control.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _textValue = "NO DATA";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("First Task"),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Text(_textValue),
              TextControl(onClick, "Click me")
            ],
          ),
        ),
      ),
    );
  }

  void onClick() {
    setState(() {
      changeText();
    });
  }

  void changeText() {
    _textValue = "NEW STATE";
  }
}
