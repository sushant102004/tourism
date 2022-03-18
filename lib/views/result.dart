// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';
import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Result extends StatefulWidget {
  // const Result({Key? key}) : super(key: key);
  Result({required this.image});
  File? image;

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  List images = [
    Image.asset(
      "assets/images/1.jpg",
    ),
    Image.asset(
      "assets/images/2.jpg",
    ),
    Image.asset(
      "assets/images/3.jpg",
    ),
    Image.asset("assets/images/4.jpg"),
    Image.asset("assets/images/5.jpg"),
  ];

  var uploadText = "Uploading Image";

  List loadingTexts = [
    "Uploading Image",
    "Processing Image",
    "Finalizing Results"
  ];

  int i = 0;
  bool isLoaded = false;

  String introText =
      "The Taj Mahal 'Crown of the Palace', is an ivory-white marble mausoleum on the right bank of the river Yamuna in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor Shah Jahan  to house the tomb of his favourite wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself. The tomb is the centrepiece of a 17-hectare (42-acre) complex, which includes a mosque and a guest house, and is set in formal gardens bounded on three sides by a crenellated wall.";
  String introHeading = "Intro";

  @override
  Widget build(BuildContext context) {
    var timer = Timer(
        const Duration(seconds: 2),
        () => {
              if (i == 3)
                {
                  setState(() {
                    isLoaded = true;
                  })
                },
              setState(() {
                uploadText = loadingTexts[i];
                print(i);
                ++i;
              }),
            });

    Scaffold showResult(File? image) {
      timer.cancel();
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Wrap(
                    children: [
                      const ListTile(
                        title: Text(
                          "Select Language",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            introText =
                                "The Taj Mahal 'Crown of the Palace', is an ivory-white marble mausoleum on the right bank of the river Yamuna in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor Shah Jahan  to house the tomb of his favourite wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself. The tomb is the centrepiece of a 17-hectare (42-acre) complex, which includes a mosque and a guest house, and is set in formal gardens bounded on three sides by a crenellated wall.";
                            introHeading = "Intro";
                          });
                          Navigator.of(context).pop();
                        },
                        child: ListTile(
                          title: Text(
                            "English",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            introText =
                                "ताजमहल 'महल का ताज', भारतीय शहर आगरा में यमुना नदी के दाहिने किनारे पर एक हाथीदांत-सफेद संगमरमर का मकबरा है। इसे 1632 में मुगल सम्राट शाहजहाँ ने अपने मकबरे को रखने के लिए कमीशन किया था। पसंदीदा पत्नी, मुमताज़ महल; इसमें स्वयं शाहजहाँ का मकबरा भी है। मकबरा 17-हेक्टेयर (42-एकड़) परिसर का केंद्रबिंदु है, जिसमें एक मस्जिद और एक गेस्ट हाउस शामिल है, और औपचारिक उद्यानों में स्थित है तीन भुजाओं से सजी दीवार। \n          इसका निर्माण मुगल सम्राट शाहजहाँ ने अपनी पत्नी मुमताज महल की याद में 1632 ईस्वी में शुरू हुआ था और 1648 ईस्वी में पूरा किया था, जिसमें मस्जिद, गेस्ट हाउस और दक्षिण में मुख्य प्रवेश द्वार, बाहरी प्रांगण और इसके मठ जोड़े गए थे। बाद में और 1653 ई. में पूरा हुआ।";
                            introHeading = "परिचय";
                          });
                          Navigator.of(context).pop();
                        },
                        child: ListTile(
                          title: Text(
                            "Hindi",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            introText =
                                "தாஜ்மஹால் 'அரண்மனையின் கிரீடம்', இந்திய நகரமான ஆக்ராவில் யமுனை ஆற்றின் வலது கரையில் உள்ள தந்தம்-வெள்ளை பளிங்கு கல்லறை ஆகும். முகலாயப் பேரரசர் ஷாஜஹானால் 1632 ஆம் ஆண்டில் அவரது விருப்பமான மனைவியான மும்தாஜ் மஹாலின் கல்லறையை வைக்க இது நியமிக்கப்பட்டது; இதில் ஷாஜகானின் கல்லறையும் உள்ளது. கல்லறையானது 17 ஹெக்டேர் (42-ஏக்கர்) வளாகத்தின் மையப் பகுதியாகும், அதில் ஒரு மசூதி மற்றும் விருந்தினர் மாளிகையும் அடங்கும், மேலும் மூன்று பக்கங்களிலும் சுவரால் சூழப்பட்ட முறையான தோட்டங்களில் அமைக்கப்பட்டுள்ளது.";
                            introHeading = "அறிமுகம்";
                          });
                          Navigator.of(context).pop();
                        },
                        child: ListTile(
                          title: Text(
                            "Tamil",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            introText =
                                "తాజ్ మహల్ 'క్రౌన్ ఆఫ్ ది ప్యాలెస్', భారతదేశంలోని ఆగ్రాలోని యమునా నదికి కుడి ఒడ్డున ఉన్న దంతపు-తెలుపు పాలరాతి సమాధి. 1632లో మొఘల్ చక్రవర్తి షాజహాన్ తన అభిమాన భార్య ముంతాజ్ మహల్ సమాధిని ఉంచడానికి దీనిని నియమించాడు; ఇందులో షాజహాన్ సమాధి కూడా ఉంది. ఈ సమాధి 17-హెక్టార్ల (42-ఎకరాలు) కాంప్లెక్స్‌లో ప్రధాన భాగం, ఇందులో మసీదు మరియు అతిథి గృహం ఉన్నాయి మరియు మూడు వైపులా క్రెనెలేటెడ్ గోడతో సరిహద్దులుగా ఉన్న అధికారిక తోటలలో ఏర్పాటు చేయబడింది";
                            introHeading = "పరిచయం";
                          });
                          Navigator.of(context).pop();
                        },
                        child: ListTile(
                          title: Text(
                            "Telugu",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            introText =
                                "Le Taj Mahal 'Couronne du Palais', est un mausolée en marbre blanc ivoire sur la rive droite de la rivière Yamuna dans la ville indienne d'Agra. Il a été commandé en 1632 par l'empereur moghol Shah Jahan pour abriter la tombe de son épouse préférée, Mumtaz Mahal ; il abrite également la tombe de Shah Jahan lui-même. La tombe est la pièce maîtresse d'un complexe de 17 hectares (42 acres), qui comprend une mosquée et une maison d'hôtes, et est située dans des jardins à la française délimités sur trois côtés par un mur crénelé.";
                            introHeading = "Introduction";
                          });
                          Navigator.of(context).pop();
                        },
                        child: ListTile(
                          title: Text(
                            "French",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  );
                });
          },
          child: const Icon(
            Icons.language_outlined,
            color: Colors.white,
          ),
        ),
        body: CustomScrollView(slivers: [
          SliverAppBar(
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark_add_outlined,
                    color: Colors.white,
                  ))
            ],
            floating: false,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              // background: Image.file(
              //   widget.image!,
              //   fit: BoxFit.cover,
              // ),
              background: CarouselSlider(
                options: CarouselOptions(
                    height: 400.0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 2)),
                items: images.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          color: Colors.white,
                          child: i,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        introHeading,
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: Text(
                    introText,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          )
        ]),
      );
    }

    return isLoaded
        ? showResult(widget.image)
//CustomScrollView(slivers: [
//               SliverAppBar(
//                 floating: false,
//                 expandedHeight: 300,
//                 flexibleSpace: FlexibleSpaceBar(
//                   background: Image.file(
//                     widget.image!,
//                     fit: BoxFit.cover,
//                   ),
// // fit:BoxFit.cover
//                 ),
//               )
//             ])

        : Scaffold(
            body: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/loading.gif"),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      uploadText,
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
  }
}
