import 'package:bookapp/homepage.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(book());
}
// ignore: camel_case_types
class book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Store',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      
    );
  }
}