import 'package:flutter/material.dart';
import 'package:real_stat_app/utils/sizeutil.dart';

class AllHotelScreen extends StatefulWidget {
  const AllHotelScreen({super.key});

  @override
  State<AllHotelScreen> createState() => _AllHotelScreenState();
}

class _AllHotelScreenState extends State<AllHotelScreen> {
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
              height: MediaQuery.of(context).size.height * 0.9,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 50),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: getSize(10),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        color: Colors.deepPurple,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(
                        width: getSize(100),
                      ),
                      Text(
                        "All Hotel",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      )
                    ]),
              ),
            ),
          ),
          Positioned(
            bottom: -60,
            left: 0,
            right: 0,
            top: MediaQuery.of(context).size.height * 0.2,
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
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.deepPurple,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.filter_alt,
                                color: Colors.white,
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: getSize(250),
                          width: double.infinity,
                          decoration: BoxDecoration(
                             border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image:
                                                  AssetImage("assets/hotel1.jpg"),
                                              fit: BoxFit.cover))),
                                ),
                                flex: 4,
                              ),
                              Expanded(
                                child: Column(children: [

                                  SizedBox(height: getSize(5),),
                                  Row(
                                    children: [

                                      Text(
                                        "Suckoco Hotel",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue),
                                      ),

                                      Spacer(),
                                          Row(
                                            children: [
                                              Text(
                                        "\$412",
                                        style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue),
                                      ),

                                            Text(
                                            "/month",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                          
                                            ],
                                          ),

                                           
                                    ],
                                  ),
                                    SizedBox(
                                    height: getSize(5),
                                  ),
                                   Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.grey,
                                      ),
                                      Text("Parakor , Indonesia",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)
                                    ],
                                  ),


                                    Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                          color: Colors.blue,
                                        ),
                                        height: getSize(40),
                                        width: getSize(40),
                                       
                                        child: Icon(
                                          Icons.bed,
                                          color: Colors.white,
                                          
                                        ),
                                      ),
                                      SizedBox(width: getSize(10),),
                                      Text(
                                        "4",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            color: Colors.grey),
                                      ),

                                      SizedBox(width: getSize(10),),


                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.blue,
                                        ),
                                        height: getSize(40),
                                        width: getSize(40),
                                        child: Icon(
                                          Icons.shower,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: getSize(10),
                                      ),
                                      Text(
                                        "2",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            color: Colors.grey),
                                      )
                                    ],
                                  ),



                                      

                                  
                                
                                ]),
                                flex: 4,
                              )
                            ]),
                          ),
                        ),












                        SizedBox(
                          height: 10,
                        ),





                        Container(
                          height: getSize(250),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/hotel1.jpg"),
                                              fit: BoxFit.cover))),
                                ),
                                flex: 4,
                              ),
                              Expanded(
                                child: Column(children: [
                                  SizedBox(
                                    height: getSize(5),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Suckoco Hotel",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue),
                                      ),
                                      Spacer(),
                                      Row(
                                        children: [
                                          Text(
                                            "\$412",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue),
                                          ),
                                          Text(
                                            "/month",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: getSize(5),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        "Parakor , Indonesia",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.blue,
                                        ),
                                        height: getSize(40),
                                        width: getSize(40),
                                        child: Icon(
                                          Icons.bed,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: getSize(10),
                                      ),
                                      Text(
                                        "4",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: getSize(10),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.blue,
                                        ),
                                        height: getSize(40),
                                        width: getSize(40),
                                        child: Icon(
                                          Icons.shower,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: getSize(10),
                                      ),
                                      Text(
                                        "2",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ]),
                                flex: 4,
                              )
                            ]),
                          ),
                        ),



                        SizedBox(
                          height: 20,
                        ),


                        Container(
                          height: getSize(250),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/hotel1.jpg"),
                                              fit: BoxFit.cover))),
                                ),
                                flex: 4,
                              ),
                              Expanded(
                                child: Column(children: [
                                  SizedBox(
                                    height: getSize(5),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Suckoco Hotel",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue),
                                      ),
                                      Spacer(),
                                      Row(
                                        children: [
                                          Text(
                                            "\$412",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue),
                                          ),
                                          Text(
                                            "/month",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: getSize(5),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        "Parakor , Indonesia",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.blue,
                                        ),
                                        height: getSize(40),
                                        width: getSize(40),
                                        child: Icon(
                                          Icons.bed,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: getSize(10),
                                      ),
                                      Text(
                                        "4",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: getSize(10),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.blue,
                                        ),
                                        height: getSize(40),
                                        width: getSize(40),
                                        child: Icon(
                                          Icons.shower,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: getSize(10),
                                      ),
                                      Text(
                                        "2",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ]),
                                flex: 4,
                              )
                            ]),
                          ),
                        ),
                      
                        SizedBox(
                          height: 100,
                        ),
                        SizedBox(
                          height: 10,
                        ),
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
