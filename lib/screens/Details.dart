import 'package:flutter/material.dart';
import 'package:real_stat_app/utils/sizeutil.dart';
import 'package:real_stat_app/widgets/customButton.dart';
class MoneyDetails extends StatefulWidget {
  int rupees ;
  MoneyDetails({required this.rupees});

  @override
  State<MoneyDetails> createState() => _MoneyDetailsState();
}

class _MoneyDetailsState extends State<MoneyDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
           Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 93, 248, 219),
              Color.fromARGB(255, 33, 228, 246),
            ])),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "${widget.rupees} (Pkr)",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text("userID:user1234",style: TextStyle(fontSize: 16),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 10),
                child: Row(
                  children: [
                    Expanded(child: Container(height: 40,color: Colors.orange,
                    
                    child: Center(child: Text("Transfer",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                    ),flex: 1,
                    
                    ),
                    SizedBox(width: getSize(10),),
                     Expanded(
                        child: Container(
                          height: 40,
                          color: Colors.black,
                          child: Center(child: Text("withdraw",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                        ),
                        flex: 1,
                      ),
                  ],
                ),

              ),
              
            ]),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "All Transaction",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                    "withdraw",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "withdraw Rs 2000 to user123",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
              trailing: Icon(Icons.check),
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
                    "Transfer",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Transfer Rs 2000 to kkk@gmail.com.user",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
              trailing: Icon(Icons.check),
            ),
          ),
        ]),
      ),
    );
  }
}