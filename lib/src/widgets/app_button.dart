import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const AppButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
