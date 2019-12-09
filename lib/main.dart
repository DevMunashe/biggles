import 'package:book_app_reader/ui/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      theme: ThemeData(
        fontFamily: 'Ubuntu',
      ),
      //home: MyHomePage(),
      home: new LoginPage(),
    );
  }
}








