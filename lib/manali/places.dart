import 'package:flutter/material.dart';

class Places extends StatelessWidget {
  const Places({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Places",
          style: TextStyle(
              color: Colors.blueAccent,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 170,
            margin: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: const Image(
                    image: AssetImage("assets/images/1.jpg"),
                    height: 170,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 150,
                    height: 170,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Velyka Vasylkivska 132 Velyka Vasylkivska 132',
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Icon(Icons.share),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Wrap(
                            children: const [
                              Text(
                                  'Manu Temple Road Old Manali Dragon Galli, Manali Manu Temple Road Old Manali Dragon Galli, Manali',
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 14,
                                  ))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: const [
                              Text(
                                "Price Range: ",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "₹150 - ₹700",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange, // background
                                  // onPrimary: Colors.orange, // foreground
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Navigate',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.call_outlined))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
