import 'package:contact_app_01/screens/contact_list/contact_list.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      routes: {
        '/' : (context) => ContactList(),
      },
    );
  }
}