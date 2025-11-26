import 'package:flutter/widgets.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, this.size});
  final String text;
  final String? size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size != null ? double.parse(size!) : 24),
    );
  }
}
