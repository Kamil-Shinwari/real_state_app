import 'dart:developer';

import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:real_stat_app/utils/sizeutil.dart';
import 'package:real_stat_app/widgets/customButton.dart';

class AddPlot extends StatefulWidget {
  const AddPlot({super.key});

  @override
  State<AddPlot> createState() => _AddPlotState();
}

class _AddPlotState extends State<AddPlot> with SingleTickerProviderStateMixin {
  bool? checkboxvalue = false;
  late TabController tabController;
  String dropdownValue = 'Sell';
  String propertyType = "House";
  String plotType = "Residential";
  String plotnew = "Sq.Ft";

  String NoOfBedrrom = "01";

  String commercialType = "Office";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 250,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/room1.jpg"),
                              colorFilter: ColorFilter.mode(
                                  Colors.black38, BlendMode.darken)),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50))),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(right: 20, left: 20, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Icon(Icons.arrow_back_ios),
                                Text(
                                  'Clear All',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            const SizedBox(height: 50),
                            const Text(
                              'Post an Ad',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.white),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Reach thousans of \n buyers and tenants in a \n few steps',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    //////////      center data
                    ///
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 232, 231, 231),
                                child: Icon(Icons.check),
                              ),
                              SizedBox(width: 15),
                              Text(
                                'Purpose',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.blue,
                                      ),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: DropdownButton<String>(
                                      isExpanded: true,
                                      // Step 3.
                                      value: dropdownValue,
                                      underline: Container(),
                                      // Step 4.
                                      items: <String>[
                                        'Sell',
                                        'Rent Out',
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(
                                            value,
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        );
                                      }).toList(),
                                      // Step 5.
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownValue = newValue!;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                const SizedBox(height: 10),
                                const Divider(
                                  thickness: 1,
                                )
                              ],
                            ),
                          ),

                          Row(
                            children: const [
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 232, 231, 231),
                                child: Icon(Icons.check),
                              ),
                              SizedBox(width: 15),
                              Text(
                                'Select Property',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),

                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.blue,
                                      ),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: DropdownButton<String>(
                                      isExpanded: true,
                                      // Step 3.
                                      value: propertyType,
                                      underline: Container(),
                                      // Step 4.
                                      items: selectProperty
                                          .map<DropdownMenuItem<String>>(
                                              (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(
                                            value,
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        );
                                      }).toList(),
                                      // Step 5.
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          propertyType = newValue!;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                const SizedBox(height: 10),
                                const Divider(
                                  thickness: 1,
                                )
                              ],
                            ),
                          ),

                          const SizedBox(height: 10),

                          //////////////////     tab  bar

                          /////////////////  Tab bar end here
                          ///
                          ///
                          ///
                          ///
                          SizedBox(
                            height: getSize(15),
                          ),

                          Row(
                            children: [
                              CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(255, 232, 231, 231),
                                  child: Icon(Icons.place)),
                              SizedBox(width: 10),
                              Container(
                                  width: getSize(250),
                                  height: getSize(50),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        label: Text("City")),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Divider(
                            thickness: 1,
                          ),

                          SizedBox(
                            height: getSize(15),
                          ),

                          Row(
                            children: [
                              CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(255, 232, 231, 231),
                                  child: Icon(Icons.place)),
                              SizedBox(width: 10),
                              Container(
                                  width: getSize(250),
                                  height: getSize(50),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        label: Text("Enter Location")),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Divider(
                            thickness: 1,
                          ),
                          Row(
                            children: [
                              const CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(255, 232, 231, 231),
                                  child: Icon(Icons.share_location_rounded)),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Select Area',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                      width: getSize(220),
                                      height: getSize(50),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            label: Text("Area Size")),
                                      )),
                                ],
                              ),
                              Container(
                                width: getSize(100),
                                height: getSize(20),
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  // Step 3.
                                  value: plotnew,
                                  underline: Container(),
                                  // Step 4.
                                  items: newPlotList
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    );
                                  }).toList(),
                                  // Step 5.
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      plotnew = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: getSize(40),
                          ),

                          Row(
                            children: [
                              const CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(255, 232, 231, 231),
                                  child: Icon(Icons.bed)),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 10),
                                  SizedBox(width: getSize(10)),
                                  Container(
                                      width: getSize(290),
                                      height: getSize(50),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            label: Text("Enter no of bedRoom")),
                                      )),
                                ],
                              ),
                            ],
                          ),

                          SizedBox(
                            height: getSize(40),
                          ),

                          Row(
                            children: [
                              const CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(255, 232, 231, 231),
                                  child: Icon(Icons.shower)),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 10),
                                  SizedBox(width: getSize(10)),
                                  Container(
                                      width: getSize(290),
                                      height: getSize(50),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            label:
                                                Text("Enter no of bathroom")),
                                      )),
                                ],
                              ),
                            ],
                          ),

                          SizedBox(
                            height: getSize(40),
                          ),

                          Row(
                            children: [
                              const CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(255, 232, 231, 231),
                                  child: Icon(Icons.text_fields)),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 10),
                                  SizedBox(width: getSize(10)),
                                  Container(
                                      width: getSize(290),
                                      height: getSize(50),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            label: Text("Enter title")),
                                      )),
                                ],
                              ),
                            ],
                          ),

                          SizedBox(
                            height: getSize(40),
                          ),

                          Row(
                            children: [
                              const CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(255, 232, 231, 231),
                                  child: Icon(Icons.description)),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 10),
                                  SizedBox(width: getSize(10)),
                                  Container(
                                      width: getSize(290),
                                      height: getSize(50),
                                      child: TextField(
                                        maxLines: 5,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            label: Text("Enter Desciption")),
                                      )),
                                ],
                              ),
                            ],
                          ),

                          SizedBox(
                            height: getSize(40),
                          ),

                          Row(
                            children: [
                              const CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(255, 232, 231, 231),
                                  child: Icon(Icons.image)),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Upload all photos",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.check,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        "  Ads with Image got high leads",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),

                          SizedBox(
                            height: getSize(20),
                          ),

                          FDottedLine(
                            color: Colors.green,
                            height: 120.0,
                            width: getSize(250),
                            strokeWidth: 2.0,
                            dottedLength: 10.0,
                            space: 2.0,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: getSize(200),
                                    height: getSize(40),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                    ),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.image,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: getSize(10),
                                          ),
                                          Text(
                                            "Gallery",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: getSize(200),
                                    height: getSize(40),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                    ),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.camera_alt,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: getSize(10),
                                          ),
                                          Text(
                                            "Camera",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ]),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            height: getSize(20),
                          ),

                          Row(
                            children: [
                              const CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(255, 232, 231, 231),
                                  child: Icon(Icons.phone_android)),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 10),
                                  SizedBox(width: getSize(10)),
                                  Container(
                                      width: getSize(290),
                                      height: getSize(50),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            label: Text("Contact No")),
                                      )),
                                ],
                              ),
                            ],
                          ),

                          SizedBox(
                            height: getSize(40),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: Card(
                elevation: 10,
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    // color: Colors.grey.withOpacity(0.2)
                  ),
                  child: Row(children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            "Save as draft ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "Upload",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                      ),
                    )
                  ]),
                ),
              )),
        ));
  }

  int? _selectedValueIndex;
  List<String> buttonText = [
    "Sell",
    "Rent Out",
  ];

  List<String> selectProperty = [
    "House",
    "Flat",
    "Upper Portion",
    "Lower Portion",
    "Farm House",
    "Room",
    "Pent House"
  ];

  List<String> newPlotList = [
    "Sq.Ft",
    "Sq.M",
    "Sq.Yd",
    "Marla",
    "Kanal",
  ];

  List<String> BedRoom = [
    "01",
    "02",
    "03",
    "04",
    "05",
    "06",
    "07",
    "08",
    "09",
    "10",
    "11",
    "12",
    "13",
  ];

  List<String> Plot = [
    "Residential",
    "Commercial",
    "Agricultural Land",
    "Industrial Land",
  ];

  List<String> Commercial = [
    "Office",
    "shop",
    "warehouse",
    "Building",
  ];

  Widget button({required String text, required int index}) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedValueIndex = index;

          log(_selectedValueIndex.toString());
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: index == _selectedValueIndex
                ? Colors.blue
                : const Color.fromARGB(255, 232, 231, 231),
            borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.all(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            text,
            style: TextStyle(
              color: index == _selectedValueIndex ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget ProprtyButton({required String text, required int index}) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedValueIndex = index;

          log(_selectedValueIndex.toString());
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: index == _selectedValueIndex
                ? Colors.blue
                : const Color.fromARGB(255, 232, 231, 231),
            borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.all(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            text,
            style: TextStyle(
              color: index == _selectedValueIndex ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
