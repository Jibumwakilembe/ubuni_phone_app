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


class PhoneList{
  final String Id;
  final String name;
  final String brand;
  final String urlImage;

  PhoneList({this.Id, this.name,this.brand,this.urlImage});
  factory PhoneList.fromJson(Map<String, dynamic> json){
    return PhoneList(
      Id: json['Id'],
      name: json['name'],
      brand: json['brand'],
      urlImage: json['urlImage'],
    );
  }
}