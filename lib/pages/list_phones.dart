import 'package:flutter/material.dart';
import 'package:mobile_shop/service/list_phones.dart';
import 'package:http/http.dart';
import 'dart:convert';




class ListPhones extends StatefulWidget {


  @override
  _ListPhonesState createState() => _ListPhonesState();
}

class _ListPhonesState extends State<ListPhones> {
  Future <List<PhoneList>> phoneList;




  @override
  void initState (){
    super.initState();
    phoneList=getPhoneList();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Available Phones'),
        centerTitle: true,
        elevation: 0,
      ),

      body: Center(
        child: FutureBuilder <List<PhoneList>>(
          future: phoneList,
          builder: (context ,snapshot){
            if(snapshot.hasData){
              List<PhoneList> data=snapshot.data;
              return ListView.builder(
                itemCount:data.length,
                itemBuilder: (BuildContext context , int index ){
                  return Card(
                    child: ListTile(
                      onTap: (){
                        Navigator.pushNamed(context ,'/view_phone', arguments:{
                          'id': data[index].id,
                          'name': data[index].name,
                          'brand': data[index].Brand,
                          'image_url': data[index].image_url,
                        });
                      },
                      title:Text('Id - ${data[index].id}'),

                      leading:ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.network('${data[index].image_url}'),

                      ),
                      subtitle: Text(data[index].name),


                    ),

                  );
                }
              );

            }else if(snapshot.hasError){
              return Text('{$snapshot.errr}');
            }
            return CircularProgressIndicator();
          },
        ),
      ),

    );
  }
}
