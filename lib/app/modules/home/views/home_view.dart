import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:mi_kalipepe/app/modules/five/views/five_view.dart';
import 'package:mi_kalipepe/app/modules/four/views/four_view.dart';
import 'package:mi_kalipepe/app/modules/one/views/one_view.dart';
import 'package:mi_kalipepe/app/modules/six/views/six_view.dart';
import 'package:mi_kalipepe/app/modules/three/views/three_view.dart';
import 'package:mi_kalipepe/app/modules/two/views/two_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final List<String> imgList = [
    'https://www.google.com/maps/uv?pb=!1s0x2dd663e6747aba43:0x179c7403b7772d94!3m1!7e115!4shttps://lh5.googleusercontent.com/p/AF1QipO6vAXRDtjz5AvYRVR0Fgjd8OqLZvfvNdywjZeu%3Dw260-h175-n-k-no!5smi+kalipepe+-+Google+Search!15zQ2dJZ0FRPT0&imagekey=!1e10!2sAF1QipO6vAXRDtjz5AvYRVR0Fgjd8OqLZvfvNdywjZeu&hl=en',
    'https://www.google.com/maps/uv?pb=!1s0x2dd663e6747aba43%3A0x179c7403b7772d94!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipO-f4XJjL0LIV__2TK7qG6u3MqVHSEpbufi13LG%3Dw86-h87-n-k-no!5smi%20kalipepe%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipO-f4XJjL0LIV__2TK7qG6u3MqVHSEpbufi13LG&hl=en#',
    'https://www.google.com/maps/uv?pb=!1s0x2dd663e6747aba43%3A0x179c7403b7772d94!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipO-f4XJjL0LIV__2TK7qG6u3MqVHSEpbufi13LG%3Dw86-h87-n-k-no!5smi%20kalipepe%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipNuGad47B-ez5-nXJFJBvMp1lAga0wEOoASy_ee&hl=en#',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 250,
              width: Get.width,
              color: Color(0xff15477A),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(top: 10, right: 20, left: 20),
            height: 75,
            width: Get.width,
            // color: Colors.amber,
            child: Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  // color: Colors.amber,
                  child: Stack(
                    children: [
                      Container(
                          width: 60,
                          height: 60,
                          child: Image.asset(
                            "assets/image/Logo2.png",
                            fit: BoxFit.cover,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "MI MUHAMMADIYAH KALIPEPE",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    Text(
                      "Berani beda, selangkah lebih maju",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Container(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                    ),
                    items: imgList
                        .map((item) => Container(
                              child: Container(
                                margin: EdgeInsets.all(5.0),
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                    child: Stack(
                                      children: <Widget>[
                                        Image.network(item,
                                            fit: BoxFit.cover, width: 1000.0),
                                        Positioned(
                                          bottom: 0.0,
                                          left: 0.0,
                                          right: 0.0,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color.fromARGB(200, 0, 0, 0),
                                                  Color.fromARGB(0, 0, 0, 0)
                                                ],
                                                begin: Alignment.bottomCenter,
                                                end: Alignment.topCenter,
                                              ),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10.0,
                                                horizontal: 20.0),
                                            child: Text(
                                              'No. ${imgList.indexOf(item)} image',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                Container(
                  height: 10,
                  color: Colors.white,
                ),
                Container(
                  height: Get.height * 0.3,
                  width: Get.width * 0.88,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffF2F2F2)),
                  child: GridView.count(
                    padding: const EdgeInsets.all(15),
                    crossAxisCount: 3,
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Color(0xff15477A),
                        margin: const EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OneView()),
                            );
                          },
                          splashColor: Colors.blue,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const <Widget>[
                                Image(
                                    image: AssetImage("assets/icon/home.png")),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Color(0xff15477A),
                        margin: const EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TwoView()),
                            );
                          },
                          splashColor: Colors.blue,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const <Widget>[
                                Image(
                                    image:
                                        AssetImage("assets/icon/trophy.png")),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Prestasi",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Color(0xff15477A),
                        margin: const EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ThreeView()),
                            );
                          },
                          splashColor: Colors.blue,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const <Widget>[
                                Image(
                                    image:
                                        AssetImage("assets/icon/people.png")),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Pendidik",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Color(0xff15477A),
                        margin: const EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FourView()),
                            );
                          },
                          splashColor: Colors.blue,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const <Widget>[
                                Image(
                                    image:
                                        AssetImage("assets/icon/galery.png")),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Galery",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Color(0xff15477A),
                        margin: const EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FiveView()),
                            );
                          },
                          splashColor: Colors.blue,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const <Widget>[
                                Image(
                                    image: AssetImage("assets/icon/ball.png")),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Ekstra",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Color(0xff15477A),
                        margin: const EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SixView()),
                            );
                          },
                          splashColor: Colors.blue,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const <Widget>[
                                Image(
                                    image:
                                        AssetImage("assets/icon/berita.png")),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Berita",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 70);

    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 70);

    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
