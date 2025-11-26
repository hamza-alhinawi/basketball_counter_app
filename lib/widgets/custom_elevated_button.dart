import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(8),
        backgroundColor: Colors.orange,
        minimumSize: Size(150, 50),
      ),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(fontSize: 18, color: Colors.black)),
    );
  }
}
