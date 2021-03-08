import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget> [
          Padding(padding: EdgeInsets.only(top: 25, left: 25),
          child: Text('Hi Chilkut,',
          style: TextStyle(
          backgroundColor: Colors.yellowAccent,
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black,
           ),
          ),
           ),
          ],
        ),
      ),
      
    );
  }
}