// ignore: file_names
class fivemodel {
  //data Type
  int? id;
  String? name;
  String? image;
  String? jadwal;

// constructor
  fivemodel({this.id, this.name, this.image, this.jadwal});

  //method that assign values to respective datatype vairables
  fivemodel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    jadwal = json['jadwal'];
  }
}
