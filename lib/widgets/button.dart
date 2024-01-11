import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const Button({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        primary: Colors.amber[400], // Background color
        onPrimary: Colors.white, // Text color
      ),
      icon: Icon(Icons.add_box_outlined),
      onPressed: onPressed,
      label: Text(title),
    );
  }
}
