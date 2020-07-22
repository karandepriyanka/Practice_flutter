import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: HomeApp(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));

}

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {

  var detail = "Details pLease";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Flutter App"),
      ) ,
      body: Container(
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter Full Name",
            labelText: "Name"
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
           UserAccountsDrawerHeader(
             accountName: Text("Priyanka Karande"),
             accountEmail: Text("priyankaakarande4199@gmail.com"),
             currentAccountPicture: Icon(Icons.person),
           ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Priyanka Karande"),
              subtitle: Text("Full Stack Developer"),
              trailing: Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("Priyankaakarande4199@gmail.com"),
              trailing: Icon(Icons.edit),
              onTap: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {} ,
        child: Icon(Icons.send),
      ),
    );
  }
}
