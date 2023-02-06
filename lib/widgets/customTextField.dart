import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController controller;
  IconData? suffix;
  final String hinttext;
  final IconData icon;
  late bool isShow;

  CustomTextField(
      {super.key,
      required this.hinttext,
      required this.icon,
      required this.controller,
      required this.isShow,
      this.suffix});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: isShow,
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xfffafafa),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: "$hinttext",
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(icon),
          suffixIcon: Icon(suffix),
        ),
      ),
    );
  }
}
