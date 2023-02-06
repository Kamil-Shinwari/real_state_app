import 'package:flutter/material.dart';
import 'package:real_stat_app/utils/sizeutil.dart';

class SpcialForYouContainer extends StatelessWidget {
  final String url;
  final String tile;
  final String rent;
  final String location;

  const SpcialForYouContainer(
      {super.key,
      required this.url,
      required this.tile,
      required this.rent,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getSize(260),
      height: getSize(200),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Column(children: [
        Expanded(
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage("$url"), fit: BoxFit.cover))),
          flex: 6,
        ),
        Expanded(
          child: Column(children: [
            Row(
              children: [
                Text(
                  "$tile",
                  style: TextStyle(color: Colors.blue, fontSize: 14),
                ),
                Spacer(),
                Text(
                  "$rent",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                ),
                Text(
                  "$location",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            )
          ]),
          flex: 3,
        )
      ]),
    );
  }
}



class CustomButton extends StatelessWidget {
  final String title;
  VoidCallback onpressed;

  CustomButton({super.key, required this.title, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: GestureDetector(
        onTap: onpressed,
        child: Container(
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Text(
            "$title",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
          )),
        ),
      ),
    );
  }
}
