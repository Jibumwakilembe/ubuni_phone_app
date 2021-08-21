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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/flower.PNG'),
              radius: 40.0,
            ),
            SizedBox(height: 20.0,),

            Text(
              'Welcome to our shop',
                  style: TextStyle(
                    fontSize: 18

                  ),
            ),
            SizedBox(height: 20.0,),
            RaisedButton.icon(

              onPressed: (){
                Navigator.pushNamed(context, '/list_phone');
              },
              icon: Icon(Icons.phone),
              label: Text(
                  'list of phones',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),

            ),


          ],
        ),
      ),
    );
  }
}
