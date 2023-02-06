import 'package:flutter/material.dart';
import 'package:real_stat_app/screens/MainScreen.dart';

class ShopMainPage extends StatefulWidget {
  @override
  State<ShopMainPage> createState() => _ShopMainPageState();
}

class _ShopMainPageState extends State<ShopMainPage> {
  int selectedindex = 0;
  List<Widget> pageWidget = [
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedindex,
        children: pageWidget,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          onTap: ((value) {
            setState(() {
              selectedindex = value;
            });
          }),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.archive,
                ),
                label: "Archive"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.share,
                ),
                label: "Share"),
          ]),
    );
  }
}
