import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tourism/views/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      Timer(
          const Duration(seconds: 3),
          () => {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Home()))
              });
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: const TextSpan(
                  text: "Tourist",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 30,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700),
                  children: <TextSpan>[
                    TextSpan(
                        text: " App", style: TextStyle(color: Colors.black))
                  ]),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                "An Idea To Make Tourism Easy",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
