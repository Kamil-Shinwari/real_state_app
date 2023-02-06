import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;

  const CustomButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.070,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
