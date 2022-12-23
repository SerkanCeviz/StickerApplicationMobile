



import 'package:flutter/material.dart';
import 'Login.dart';


void main(key) {
  runApp( Opener());
}

class Opener extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(accentColor: Colors.grey),
      home: MyApp(),
    );
  }
}





