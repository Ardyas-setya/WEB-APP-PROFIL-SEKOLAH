import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/two_controller.dart';

class TwoView extends GetView<TwoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TwoView'),
        centerTitle: true,
      ),
      body: GridView.count(
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
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(image: AssetImage("assets/icon/home.png")),
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
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(image: AssetImage("assets/icon/trophy.png")),
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
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(image: AssetImage("assets/icon/people.png")),
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
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(image: AssetImage("assets/icon/galery.png")),
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
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(image: AssetImage("assets/icon/ball.png")),
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
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(image: AssetImage("assets/icon/berita.png")),
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
    );
  }
}
