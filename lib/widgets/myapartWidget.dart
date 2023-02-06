import 'package:flutter/material.dart';
import 'package:real_stat_app/utils/sizeutil.dart';

class MyApartWidget extends StatelessWidget {
  final String url;
  final String text;

  const MyApartWidget({super.key, required this.url, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getSize(120),
      width: getSize(100),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Container(
            width: getSize(60),
            height: getSize(90),
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(url))),
          ),
          Text(
            "$text",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
