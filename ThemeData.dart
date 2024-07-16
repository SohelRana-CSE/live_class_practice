//ThemeData

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
              /*style: ElevatedButton.styleFrom(
             backgroundColor: Colors.blueGrey,
            foregroundColor: Colors.white,
             shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(8)
          )*/
              style: ButtonStyles.elevatedStyle),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyles.textButton,
          ),
          inputDecorationTheme: InputDecorationTheme( 
            enabledBorder: OutlineInputBorder(
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50)
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent)
            )
          ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.greenAccent,
          centerTitle: true,
          elevation: 3,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red,
              fontSize: 24
          )
        )
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.blue,
                 foregroundColor: Colors.white,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(8)
           ),
          ),
         ),
      ),
      themeMode: ThemeMode.dark,
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
        leading: Icon(Icons.home),
        actions: [
          Icon(Icons.add_circle),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Tap to edit')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {},
                  child: Text('Tap to edit')),
              ElevatedButton(onPressed: () {}, child: Text('Tap to edit')),
              ElevatedButton(onPressed: () {}, child: Text('Tap to edit')),
              TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () {},
                  child: Text('Tap to edit')),

              TextField(),
              TextField(),
              TextField(),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonStyles {
  static ButtonStyle elevatedStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.blueGrey,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)));

  static ButtonStyle textButton = TextButton.styleFrom(
      textStyle: TextStyle(fontSize: 24),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16));
}
