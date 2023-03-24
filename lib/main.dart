import 'package:contact_app_01/screens/home/home.dart';
import 'package:contact_app_01/screens/new_contact/new_contact.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.white,
            letterSpacing: 4,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      routes: {
        '/' : (context) => Home(),
        '/new' : (context) => NewContact(),
      },
    );
  }
}