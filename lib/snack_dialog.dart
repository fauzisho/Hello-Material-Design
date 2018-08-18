import 'package:flutter/material.dart';

class SnackDialogScreen extends StatefulWidget {
  @override
  _SnackDialogScreenState createState() => _SnackDialogScreenState();
}

class _SnackDialogScreenState extends State<SnackDialogScreen> {
  final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var _appBar = AppBar(
      title: Text("Dialog"),
      centerTitle: true,
    );

    var _body = Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
            child: Text("Show Alert"),
            onPressed: () => tampilDialog(context),
          ),
          SizedBox(
            height: 8.0,
          ),
          RaisedButton(
            child: Text("Show Option"),
            onPressed: () => tampilOption(context),
          ),
          SizedBox(
            height: 8.0,
          ),
          RaisedButton(
            child: Text("Show Snack Bar"),
            onPressed: () => tampilSnackBar(),
          ),
          SizedBox(
            height: 8.0,
          )
        ],
      ),
    );

    return new Scaffold(
      key: _key,
      appBar: _appBar,
      body: _body,
    );
  }

  tampilDialog(BuildContext ctx) {
    showDialog(
        context: ctx,
        barrierDismissible: false,
        child: AlertDialog(
            title: Text("Hallo"),
            content: Text("Ini dialog , cukup tekan OK"),
            actions: <Widget>[
              FlatButton(
                child: Text("OK"),
                onPressed: () => Navigator.of(context).pop(),
              )
            ]));
  }

  tampilOption(BuildContext ctx) {
    showDialog(
        context: ctx,
        child: SimpleDialog(
          title: Text("Flutter"),
          children: <Widget>[
            SimpleDialogOption(
              child: Text("dart"),
              onPressed: () {
                debugPrint("pilih dart");
                Navigator.of(context).pop();
              },
            ),
            SimpleDialogOption(
              child: Text("react native"),
              onPressed: () {
                debugPrint("pilih react native");
                Navigator.of(context).pop();
              },
            ),
            SimpleDialogOption(
              child: Text("kotlin"),
              onPressed: () {
                debugPrint("pilih kotlin");
                Navigator.of(context).pop();
              },
            )
          ],
        ));
  }

  tampilSnackBar() {
    var _sb = SnackBar(
      content: Text("Snack bar ..."),
      action: SnackBarAction(label: "Yess ", onPressed: (){
        print("snack bar yess..");
      }),
    );
    _key.currentState.showSnackBar(_sb);
  }
}
