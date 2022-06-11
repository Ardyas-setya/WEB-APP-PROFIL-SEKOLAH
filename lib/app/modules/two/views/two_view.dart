import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'ProductDataModel.dart';
import 'package:flutter/services.dart' as rootBundle;

class TwoView extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<TwoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: ReadJsonData(),
      builder: (context, data) {
        if (data.hasError) {
          return Center(child: Text("${data.error}"));
        } else if (data.hasData) {
          var items = data.data as List<ProductDataModel>;
          return ListView.builder(
              itemCount: items == null ? 0 : items.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: Image(
                            image:
                                NetworkImage(items[index].imageURL.toString()),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Expanded(
                            child: Container(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8, right: 8),
                                child: Text(
                                  items[index].name.toString(),
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8, right: 8),
                                child: Text(items[index].price.toString()),
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                );
              });
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    ));
  }

  Future<List<ProductDataModel>> ReadJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('assets/contohdata.json');
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => ProductDataModel.fromJson(e)).toList();
  }
}









  
//   Future<List<User>> _getUsers() async {
//     final AssetBundle = DefaultAssetBundle.of(context);
//     var data = await AssetBundle.loadString("assets/contohdata.json");
//     // http.get("https://json-generator.com/api/json/get/cfwZmvEBbC?indent=2");

//     var jsonData = json.decode(data);

//     List<User> users = [];

//     for (var u in jsonData) {
//       User user =
//           User(u["index"], u["about"], u["name"], u["email"], u["picture"]);

//       users.add(user);
//     }

//     print(users.length);

//     return users;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//           // title: new Text(widget.title),
//           ),
//       body: Container(
//         child: FutureBuilder(
//           future: _getUsers(),
//           builder: (BuildContext context, AsyncSnapshot snapshot) {
//             print(snapshot.data);
//             if (snapshot.data == null) {
//               return Container(child: Center(child: Text("Loading...")));
//             } else {
//               return ListView.builder(
//                 itemCount: snapshot.data.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return ListTile(
//                     leading: CircleAvatar(
//                       backgroundImage:
//                           NetworkImage(snapshot.data[index].picture),
//                     ),
//                     title: Text(snapshot.data[index].name),
//                     subtitle: Text(snapshot.data[index].email),
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           new MaterialPageRoute(
//                               builder: (context) =>
//                                   DetailPage(snapshot.data[index])));
//                     },
//                   );
//                 },
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }

// class DetailPage extends StatelessWidget {
//   final User user;

//   DetailPage(this.user);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//       title: Text(user.name),
//     ));
//   }
// }

// class User {
//   final int index;
//   final String about;
//   final String name;
//   final String email;
//   final String picture;

//   User(this.index, this.about, this.name, this.email, this.picture);
// }
