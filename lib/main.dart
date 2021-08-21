import 'package:flutter/material.dart';
import 'package:mobile_shop/pages/home.dart';
import 'package:mobile_shop/pages/list_phones.dart';
import 'package:mobile_shop/pages/view_phone.dart';
import 'pages/home.dart';
import 'pages/list_phones.dart';
import 'pages/view_phone.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',

    routes: {
      '/home': (context) => Home(),
      '/list_phone': (context)=> ListPhones(),
      '/view_phone': (context)=>  ViewPhone(),
    },

  ));
}
