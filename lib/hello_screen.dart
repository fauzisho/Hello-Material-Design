import 'package:flutter/material.dart';

class HelloScreen extends StatefulWidget {
  @override
  _HelloScreenState createState() => _HelloScreenState();
}

class _HelloScreenState extends State<HelloScreen> {
  @override
  Widget build(BuildContext context) {
    var box = Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Colors.blue[200]])),
      // margin: EdgeInsets.only(top: 52.0),
      padding: EdgeInsets.all(16.0),
      child: Text("Hello Flutter"),
      width: 200.0,
      height: 200.0,
    );

    var baris = Row(
      children: <Widget>[box, box, box],
    );

    var label = Text('Hello Flutter');
    var vertical = Column(
      children: <Widget>[label, box, box],
    );
    
    var tombol = RaisedButton(
      child: Text("Tombol"),
      onPressed: (){},
    );

    var tumpuk = Stack(
      children: <Widget>[box,tombol],
    );
    return Scaffold(
      body: Center(
        child: tumpuk,
      ),
    );
  }
}
