import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mobile_shop/service/list_phones.dart';
import 'package:http/http.dart';




class ListPhones extends StatefulWidget {


  @override
  _ListPhonesState createState() => _ListPhonesState();
}

class _ListPhonesState extends State<ListPhones> {
  Future <List<PhoneList>> phoneList;

  String url_Get='https://www.paa.ubuni.co.tz/phones';


  @override
  Widget build(BuildContext context) {
    //getPhoneList();
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
                          'Id': data[index].Id,
                        });
                      },
                      title:Text('Id - ${data[index].Id}'),
                      leading: CircleAvatar(
                        backgroundImage:NetworkImage(data[index].urlImage),
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
