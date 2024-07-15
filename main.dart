//Buttons | Navigation (Navigator.push, Navigator.pop(context); , Navigator.pushReplacement, Navigator.pushAndRemoveUntil)

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_class_project/home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}








