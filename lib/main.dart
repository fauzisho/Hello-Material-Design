import 'package:flutter/material.dart';
import 'package:flutter_app/hello_screen.dart';
import 'package:flutter_app/login_screen.dart';
import 'package:flutter_app/material_screen.dart';
import 'package:flutter_app/snack_dialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginScreen.tag: (context) => LoginScreen(),
    MaterialScreen.tag: (context) => MaterialScreen(),
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Hello Flutter',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
        home: new LoginScreen(),
        routes: routes,
    );
  }
}