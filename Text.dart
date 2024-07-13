import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

//Column => Vertically  == y-axis
//Row => Horizontally  == x-axis

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green.shade200,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade500,
          title: Text(
            'Home Screen',
            style: TextStyle(color: Colors.orangeAccent),
          ),
          leading: Icon(
            Icons.home_filled,
            color: Colors.orangeAccent,
          ),
          actions: [
            IconButton(
              onPressed: () {
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text('Send Money'),
                    content: Text('Are you sure that you want to send money?'),
                  );
                });
              },
              icon: Icon(Icons.add),
              color: Colors.orangeAccent,
            ),
          ],
        ),
        body: Center(
          child: Text(
            'Hello World. we are starting a new application journey',
            textAlign: TextAlign.center,
            maxLines: 1,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              backgroundColor: Colors.purple,
              color: Colors.white,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          
        ));
  }
}
