import 'package:http/http.dart';
import 'dart:convert';

class View {
  int id;
  String name;
  String brand;
  String image_url;
  View({this.id});


  void viewPhone() async{
    Response response=await get('https://www.paa.ubuni.co.tz/phones/:$id');
    Map data=jsonDecode(response.body);
    id=data['id'];
    name=data['name'].toString();
    brand=data['brand'];
    image_url=data['Image_url'];
    print(name);
  }


}
