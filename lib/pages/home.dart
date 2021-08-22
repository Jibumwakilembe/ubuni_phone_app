import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Mobile Phone Shop'),
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
                  child: Image.asset('assets/phone.PNG'),
                ),
              ),

              SizedBox(height: 60.0,),
              Text(
                'Welcome to our mobile shop',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(height: 100.0,),
              RaisedButton.icon(

                onPressed: (){
                  Navigator.pushNamed(context, '/list_phone');
                },
                icon: Icon(
                    Icons.phone,
                     size: 70.0,
                      ),

                label: Text(
                    'check list of phones',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                ),

              ),


            ],
          ),
        ),
      ),
    );
  }
}
