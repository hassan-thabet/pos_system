import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final String hint ;
  const CustomTextField(this.hint , {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: hint,
        ),
      ),
    );
  }
}
