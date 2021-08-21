import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';


class ViewPhone extends StatefulWidget {
  @override
  _ViewPhoneState createState() => _ViewPhoneState();
}

class _ViewPhoneState extends State<ViewPhone> {
  String Id;
  String name;
  String brand;
  String image_url;

  String getId(String Id){
    return this.Id=Id;
  }

  void viewPhone() async{
    Response response=await get('https://www.paa.ubuni.co.tz/phones/:$Id');
    Map data=jsonDecode(response.body);
    Id=data['Id'];
    name=data['name'];
    brand=data['brand'];
    image_url=data['image_url'];


  }
  @override
  Widget build(BuildContext context) {
    Id=ModalRoute.of(context).settings.arguments;
    getId(Id);

    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Detail'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              CircleAvatar(
                backgroundImage: NetworkImage('$image_url'),
                radius: 40,
              ),
              SizedBox(height: 20,),

              Text(
                  'Id-$Id',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20,),

              Text(
                  'name-$name',
                  style: TextStyle(
                  fontSize: 18,
                   ),
              ),
              SizedBox(height: 20,),

              Text(
                  'brand-$brand',
                     style: TextStyle(
                      fontSize: 18,
                   ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
