import 'package:flutter/material.dart';
import 'package:live_class_project/profile.dart';
import 'package:live_class_project/settings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade300,
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Settings();
                  }));
                },
                child: Text('Go to Settings')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Profile(
                                userName: 'Sohel',
                              )));
                },
                child: Text('Go to Profile')),
          ],
        ),
      ),
    );
  }
}
