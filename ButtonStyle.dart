//Buttons 


import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(style: ButtonStyles.elevatedStyle,
            onPressed: (){}, child: Text('Tap to edit')),


            ElevatedButton(style: ButtonStyles.elevatedStyle,onPressed: (){}, child: Text('Tap to edit')),


            ElevatedButton(style: ButtonStyles.elevatedStyle,
            onPressed: (){}, child: Text('Tap to edit')),

            TextButton(onPressed: (){}, child: Text('Tap to edit')),

            TextField()
          ],
        ),
      ),
    );
  }
}


class ButtonStyles {
  static ButtonStyle elevatedStyle =  ElevatedButton.styleFrom(
      backgroundColor: Colors.blueGrey,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
      )
  );
}






