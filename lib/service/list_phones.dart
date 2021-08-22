import 'dart:convert';
import 'package:http/http.dart';


Future <List<PhoneList>> getPhoneList() async{

  final response=await get('https://www.paa.ubuni.co.tz/phones');
  if(response.statusCode == 200){
    List jsonResponse=json.decode(response.body);
    return jsonResponse.map((data)=>new PhoneList.fromJson(data)).toList();
  }
  else{
    print('error occured');
  }

}

 class PhoneList  {
  final int id;
  final String name;
  final String Brand;
  final String image_url;

  PhoneList({this.id, this.name,this.Brand,this.image_url});
  factory PhoneList.fromJson(Map<String, dynamic> json){
    return PhoneList(
      id: json['id'],
      name: json['name'],
      Brand: json['Brand'],
      image_url: json['image_url'],
    );
  }
}