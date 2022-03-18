import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:tourism/views/imagescan.dart';
import 'package:tourism/views/result.dart';
import 'package:tourism/views/services.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var currentIndex = 0;

  void onBottomNavBarItemTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> pages = <Widget>[
    const ImageScan(),
    const Center(
      child: Text("Page 2"),
    ),
    const Services()
  ];

  var drawer = Drawer(
      elevation: 5,
      child: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 50),
              child: RichText(
                  text: const TextSpan(
                      text: "Tourist",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontFamily: "Poppins",
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                      children: <TextSpan>[
                    TextSpan(
                        text: " App", style: TextStyle(color: Colors.black))
                  ])),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.settings_outlined,
              color: Colors.black,
            ),
            title: Text(
              "Setting",
              style: TextStyle(fontFamily: "Poppins", fontSize: 18),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.chat_bubble_outline,
              color: Colors.black,
            ),
            title: Text(
              "Contact Us",
              style: TextStyle(fontFamily: "Poppins", fontSize: 18),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.help_center_outlined,
              color: Colors.black,
            ),
            title: Text(
              "About Us",
              style: TextStyle(fontFamily: "Poppins", fontSize: 18),
            ),
          ),
        ],
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: RichText(
            text: const TextSpan(
                text: "Tourist",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: "Poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
                children: <TextSpan>[
              TextSpan(text: " App", style: TextStyle(color: Colors.black))
            ])),
        actions: [
          IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(right: 5),
              child: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black,
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 5, left: 2, right: 2),
        child: SalomonBottomBar(
          unselectedItemColor: Colors.grey[600],
          currentIndex: currentIndex,
          onTap: onBottomNavBarItemTap,
          items: <SalomonBottomBarItem>[
            SalomonBottomBarItem(
                icon: const Icon(Icons.camera_alt_outlined),
                title: const Text("Scan Image"),
                selectedColor: Colors.purple),
            SalomonBottomBarItem(
                icon: const Icon(Icons.view_list_outlined),
                title: const Text("Virtual Tour"),
                selectedColor: Colors.teal),
            SalomonBottomBarItem(
                icon: const Icon(Icons.miscellaneous_services_outlined),
                title: const Text("Services"),
                selectedColor: Colors.pink),
          ],
        ),
      ),
      body: pages.elementAt(currentIndex),
    );
  }
}
