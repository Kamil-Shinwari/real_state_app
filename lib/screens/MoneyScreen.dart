import 'package:flutter/material.dart';
import 'package:real_stat_app/screens/Details.dart';
import 'package:real_stat_app/utils/sizeutil.dart';
import 'package:real_stat_app/widgets/customButton.dart';

class MoneyScreen extends StatefulWidget {
  const MoneyScreen({super.key});

  @override
  State<MoneyScreen> createState() => _MoneyScreenState();
}

class _MoneyScreenState extends State<MoneyScreen> {
  int rupees = 26800;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 93, 248, 219),
                Color.fromARGB(255, 33, 228, 246),
              ])),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$rupees (Pkr)",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MoneyDetails(rupees: rupees),));
                        },
                        child: CustomButton(text: "Details",)),
                    ),
                  ]),
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Align(
              alignment: Alignment.topLeft,
               child: Text(
                  "All Transaction",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
             ),
           ),
            Card(
              child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text(
                      "K",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bonuus",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Deposit Rs 2000 to kkk@gmail.com.user",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                  trailing: Icon(Icons.check),
                  ),
            ),

            SizedBox(height: getSize(10),),
             Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Text(
                    "K",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bonuus",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Deposit rs 2000 to kkk@gmail.com.user",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
                trailing: Icon(Icons.check),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
