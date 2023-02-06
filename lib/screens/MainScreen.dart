import 'package:flutter/material.dart';
import 'package:real_stat_app/screens/AddPlot.dart';
import 'package:real_stat_app/screens/AllHotelScreen.dart';
import 'package:real_stat_app/screens/CardScreen.dart';
import 'package:real_stat_app/screens/DetailsContainer.dart';
import 'package:real_stat_app/utils/sizeutil.dart';
import 'package:real_stat_app/widgets/customSearchView.dart';
import 'package:real_stat_app/widgets/myapartWidget.dart';
import 'package:real_stat_app/widgets/specialForyou.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController stateDefaultSearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
          title: Text("HomePage"),
        
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(image: AssetImage("assets/room1.jpg"),fit: BoxFit.cover)
                ),
              child: Text(""),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: const Text(' My Profile '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.sell),
                title: const Text(' Post Ads '),
                onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) =>AddPlot() ,));
                },
              ),
               ListTile(
                leading: Icon(Icons.wallet),
                title: const Text(' wallet '),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CardScreen(),
                      ));
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag),
                title: const Text(' Order'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
             
              ListTile(
                leading: Icon(Icons.edit),
                title: const Text(' Edit Profile '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: const Text('LogOut'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Stack(children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.9,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage("assets/prop.jpg"), fit: BoxFit.cover)),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Hello",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Spacer(),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Icon(
                                Icons.notifications,
                                color: Colors.white,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Jubiyan Nautiyal",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "👋",
                              style: TextStyle(fontSize: 25),
                            )
                          ],
                        ),
                        SizedBox(
                          height: getSize(10),
                        ),
                        Text(
                          "Let's find some the best Real Estate with us!",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        SizedBox(
                          height: getSize(10),
                        ),
                        Row(
                          children: [
                            CustomSearchView(
                              width: getSize(320),
                              focusNode: FocusNode(),
                              controller: stateDefaultSearchController,
                              hintText: "Search",
                              margin: getMargin(
                                top: 24,
                              ),
                              prefix: Container(
                                margin: getMargin(
                                  left: 20,
                                  top: 18,
                                  right: 12,
                                  bottom: 18,
                                ),
                                child: Icon(Icons.search),
                              ),
                              prefixConstraints: BoxConstraints(
                                maxHeight: getVerticalSize(
                                  56.00,
                                ),
                              ),
                              suffix: Padding(
                                padding: EdgeInsets.only(
                                  right: getHorizontalSize(
                                    15.00,
                                  ),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    stateDefaultSearchController.clear;
                                  },
                                  icon: Icon(
                                    Icons.clear,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                              suffixConstraints: BoxConstraints(
                                maxHeight: getVerticalSize(
                                  56.00,
                                ),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: getSize(10),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.deepPurple,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Icon(
                                      Icons.filter_alt,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: getSize(20),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              MyApartWidget(
                                url: "assets/home.png",
                                text: "House",
                              ),
                              SizedBox(
                                width: getSize(10),
                              ),
                              MyApartWidget(
                                url: "assets/apart.png",
                                text: "Apartment",
                              ),
                              SizedBox(
                                width: getSize(10),
                              ),
                             
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => AllHotelScreen(),));
                                },
                                child: MyApartWidget(
                                  url: "assets/hotels.png",
                                  text: "Plot",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
          Positioned(
            bottom: -60,
            left: 0,
            right: 0,
            top: MediaQuery.of(context).size.height * 0.45,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Special For You",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Spacer(),
                            Text(
                              "See all",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(),));
                                },
                                child: SpcialForYouContainer(
                                    url: "assets/inner.jpg",
                                    tile: "Blast Apartment",
                                    rent: "\$246 /month",
                                    location: "parakor , Indonesia"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              SpcialForYouContainer(
                                  url: "assets/inner.jpg",
                                  tile: "Blast Apartment",
                                  rent: "\$246 /month",
                                  location: "parakor , Indonesia"),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: getSize(10),
                        ),
                        Text(
                          "New Building",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: getSize(10),
                        ),
                        Container(
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Expanded(
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: AssetImage("assets/hotel1.jpg"),
                                          fit: BoxFit.cover))),
                              flex: 3,
                            ),
                            SizedBox(width: getSize(5),),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Text("Taj mahal Hotel",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.blue),),

                                Row(
                                  children: [
                                    Icon(Icons.location_on ,color: Colors.grey,),
                                      Text(
                                        " india",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,color: Colors.grey),
                                      ),

                                  ],
                                ),
                                
                                  Text("\$450 /month",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.grey
                                              ))
                             
                              ],),
                              flex: 5,
                            )
                          ]),
                        ),

                        SizedBox(height: getSize(10),),








                         Container(
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/hotel2.jpg"),
                                              fit: BoxFit.cover))),
                                  flex: 3,
                                ),
                                SizedBox(
                                  width: getSize(5),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Sareena Hotel",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            color: Colors.blue),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.grey,
                                          ),
                                          Text(
                                            " Pakistan",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                      Text("\$450 /month",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.grey))
                                    ],
                                  ),
                                  flex: 5,
                                )
                              ]),
                        ),


SizedBox(height: getSize(80),)












                        
                      ]),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
