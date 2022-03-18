import 'package:flutter/material.dart';
import 'package:tourism/manali/intro.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 30),
            child: Row(children: [
              Expanded(
                // width: 260,
                // height: 60,
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.location_on_outlined,
                      ),
                      hintText: "Search City",
                      hintStyle: const TextStyle(
                        fontFamily: "Poppins",
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      filled: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 60,
                  width: 60,
                  //color: Colors.blueAccent,
                  decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: IconButton(
                    icon: const Icon(
                      Icons.search_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              )
            ]),
          ),

          // Intresting Cities Text
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "Intresting Cities",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            child: SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const IntroManali()));
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            "Manali",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        width: 250,
                        decoration: const BoxDecoration(
                            color: Colors.orange,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      width: 250,
                      child: const Center(
                        child: Text(
                          "Jaipur",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      width: 250,
                      child: const Center(
                        child: Text(
                          "Kashmir",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
