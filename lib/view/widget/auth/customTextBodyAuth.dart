
import 'package:flutter/material.dart';

class CustomTextBodyAuth extends StatelessWidget {
  final String? description ;
   const CustomTextBodyAuth({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$description",
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 18,
        color: Colors.black45,
      ),
    );
  }
}
