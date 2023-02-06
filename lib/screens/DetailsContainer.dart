import 'package:flutter/material.dart';
import 'package:real_stat_app/utils/sizeutil.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage("assets/hotel1.jpg"),
                      fit: BoxFit.cover)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 20),
                      child: Container(
                        height: getSize(40),
                        width: getSize(40),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_back,
                              size: 35,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ]),
            ),
          ),
          Positioned(
            bottom: -60,
            left: 0,
            right: 0,
            top: MediaQuery.of(context).size.height * 0.25,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 20,
                        ),

                        Text(
                          "Blast Apartment",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        Row(
                          children: [
                            Icon(
                              Icons.bedroom_child_rounded,
                              color: Colors.blue,
                              size: 30,
                            ),
                            SizedBox(
                              width: getSize(10),
                            ),
                            Text(
                              "6 Rooms",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: getSize(40),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.bathroom,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: getSize(10),
                                ),
                                Text(
                                  "3 bath",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(
                              width: getSize(40),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.meeting_room,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: getSize(10),
                                ),
                                Text(
                                  "1280 feet",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: getSize(20),
                        ),

                        Divider(
                          thickness: 2,
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        // Owner Info

                        Container(
                          width: double.infinity,
                          height: getSize(100),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                flex: 2,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage("assets/owner.png"),
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Tim Berner Lee",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          "owner",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        )
                                      ]),
                                ),
                                flex: 3,
                              ),
                              SizedBox(
                                width: getSize(10),
                              ),
                              Expanded(
                                child: Row(children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade300,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Icon(
                                      Icons.message,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: getSize(10),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade300,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.white,
                                    ),
                                  ),
                                ]),
                                flex: 2,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        Divider(
                          thickness: 2,
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Container(
                          width: double.infinity,
                          height: getSize(250),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.blue)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Location",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: getSize(10),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        "street 4 Raja Bazar Rawalpindi , pakistan",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: getSize(10),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      height: getSize(150),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image:
                                                  AssetImage("assets/map.jpg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ),
        ]),
        bottomNavigationBar: Card(
          elevation: 10,
          child: Container(
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                    // color: Colors.grey.withOpacity(0.2)
                    ),
                    child: Row(children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:15.0),
                            child: Text("\$246 ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),),
                          ),
                          Text(
                    "/months",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        ),
                  ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right:15.0),
                        child: Container(width: 100,
                        height: 40,
                        decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Text("Book now",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                        ),
                        
                      )
                    ]),
          ),
        ),
      ),
    );
  }
}
