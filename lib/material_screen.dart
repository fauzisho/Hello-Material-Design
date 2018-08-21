import 'package:flutter/material.dart';

class MaterialScreen extends StatefulWidget {
  static String tag = 'material-page';
  @override
  _MaterialScreenState createState() => _MaterialScreenState();
}

class _MaterialScreenState extends State<MaterialScreen> {
  @override
  Widget build(BuildContext context) {

    var _appBar = AppBar(
//      leading: Icon(Icons.menu), ketika menggunakan navbar tidak perlu menggunakan leading
      title: Text("Material Design"),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.more_vert), onPressed: null)
      ],
    );

    var _theme_display = Theme.of(context).textTheme.display1;
    var _body = Column(
      children: <Widget>[
        Text("Flutter Indonesia",style: _theme_display),
        Text("MVC components have more connections than the others."
            " And coupling levels are mostly data structured"
            " level and control level which are higher than the"
            " other two architectures. MVP architecture has the "
            "least connections and its coupling level mostly falls "
            "on message level and data structured level. MVVM architecture "
            "is similar to MVP architecture, "
            "but it has one more connection and a higher coupling level."),
      ],
    );

    var _fab = FloatingActionButton(
      child: Icon(Icons.add),
      tooltip: "Add Floating",
      onPressed: (){},
    );

    var _bnv = BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),title:Text("Home")),
        BottomNavigationBarItem(icon: Icon(Icons.refresh),title:Text("Refresh")),
        BottomNavigationBarItem(icon: Icon(Icons.face),title:Text("Profile"))

      ],
    );

    var _drawerHeader = DrawerHeader(decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blue,Colors.blue[200]])
    ), child: Column(children: <Widget>[Text('Material Design'),
    Text('Material Design Flutter')],),);
    var _drawer = Drawer(
      child: ListView(
        children: <Widget>[
          _drawerHeader,
          ListTile(title: Text("List 1"),leading: Icon(Icons.map),onTap: (){},),
          ListTile(title: Text("List 2"),leading: Icon(Icons.filter),onTap: (){},),
          ListTile(title: Text("List 3"),leading: Icon(Icons.face),onTap: (){},)
        ],
      ),
    );

    return new Scaffold(
      appBar: _appBar,
      body: Padding(padding: EdgeInsets.all(16.0), child: _body,),
      floatingActionButton: _fab,
      bottomNavigationBar: _bnv,
      drawer: _drawer,
    );
  }
}
