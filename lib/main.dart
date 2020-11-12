import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert' as convert;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', //nombre de app
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Mi aplicación conti'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Container(
          color: Colors.red,
          child: Text("hola"),
        ),
        actions: [Text("asdasdasdsad")],
        backgroundColor: Colors.green,
        elevation: 4,
      ),
      body: Container(
        color: Colors.deepPurple,
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "hola mamá! estoy en vivo",
              style: TextStyle(
                  color: Color(0xFFbbaacc),
                  backgroundColor:
                      Color.fromARGB(255, 52, 44, 150)), //#bbaaccFF
            ),
            Text("Hola papá"),
            Row(
              children: [
                Column(
                  children: [Icon(Icons.verified_user), Text("nombre")],
                ),
                Icon(Icons.car_repair),
                Text("qwewqewqewqe"),
                Container(
                    color: Colors.blue,
                    child: Image.network(
                        "https://diprece.minsal.cl/wp-content/uploads/2015/12/Android.png"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
