import 'package:chaty/sayfalar/chatpage.dart';
import 'package:chaty/sayfalar/homePage.dart';
import 'package:chaty/sayfalar/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (ChatPage());
  }//
}
