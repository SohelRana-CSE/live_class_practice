import 'package:flutter/material.dart';
import 'package:live_class_project/settings.dart';

class Profile extends StatelessWidget {
  const Profile({super.key, required this.userName});

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(userName),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back to Home')),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Settings()));
            }, child: Text('Go to Settings')),
          ],
        ),
      ),
    );
  }
}
