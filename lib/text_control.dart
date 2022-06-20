import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback handler;
  final String textButton;

  const TextControl(this.handler, this.textButton, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: Colors.blue),
      onPressed: handler,
      child: Text(textButton),
    );
  }
}
