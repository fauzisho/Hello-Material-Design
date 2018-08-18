import 'package:flutter/material.dart';
import 'package:flutter_app/hello_screen.dart';
import 'package:flutter_app/material_screen.dart';
import 'package:flutter_app/snack_dialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Hello Flutter',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SnackDialogScreen(),  //dialog screen
//      home: new HelloScreen(),      // basic screen
//      home: new MaterialScreen(),   //material screen

    );
  }
}