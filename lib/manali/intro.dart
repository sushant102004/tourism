import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class IntroManali extends StatelessWidget {
  const IntroManali({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizedBox(
        width: 70,
        child: Drawer(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 300),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Ionicons.home_outline,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Ionicons.pizza_outline,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Ionicons.compass_outline,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Ionicons.medkit_outline,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Ionicons.bus_outline,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Manali",
          style: TextStyle(
              color: Colors.blueAccent,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "Intro ",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 15, right: 15),
            child: Text(
              "Manali is a town in Indian state of Himachal Pradesh. It is located in the northern end of the Kullu Valley, formed by Beas River. This town is located in Kullu district, approximately 270 KM north of the state capital of Shimla and 544 KM northeast of the national capital Delhi.",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "History",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 15, right: 15),
            child: Text(
              "Manali is named after the Sanātanī lawgiver Manu. The name Manali is regarded as the derivative of Manu-Alaya. In Hindu cosmology, Manu is believed to have stepped off his ark in Manali to recreate human life after a great flood had deluged the world. The Kullu Valley in which Manali is situated is often referred to as the Valley of the Gods",
              style: TextStyle(fontSize: 16, fontFamily: "Poppins"),
            ),
          ),
        ],
      ),
    );
  }
}
