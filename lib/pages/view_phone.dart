import 'package:flutter/material.dart';


class ViewPhone extends StatefulWidget {
  @override
  _ViewPhoneState createState() => _ViewPhoneState();
}

class _ViewPhoneState extends State<ViewPhone> {
  int id;
  Map data={};
  String name;
  String brand;
  String image_url;


  @override
  Widget build(BuildContext context) {
    data=ModalRoute.of(context).settings.arguments;
    id=data['id'];
    name=data['name'];
    brand=data['brand'];
    image_url=data['image_url'];


    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Detail'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.network('$image_url'),
                ),
              ),

              SizedBox(height: 30,),

              Text(
                  'Id-$id',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 30,),

              Text(
                  'name-$name',
                  style: TextStyle(
                  fontSize: 30,
                   ),
              ),
              SizedBox(height: 30,),

              Text(
                  'brand-$brand',
                     style: TextStyle(
                      fontSize: 38,
                   ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
