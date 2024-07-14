// Buttons(ElevatedButton, TextButton, IconButton, GestureDetector, InkWell)
// TextField | Padding


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
                showDialog(
                    context: context, builder: (context) {
                      return AlertDialog(
                        title: Text('Send Money'),
                        content:
                            Text('Are you sure that you want to send money?'),
                      );
                    });
              },
              icon: Icon(Icons.add),
              color: Colors.orangeAccent,
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                        width: 2,
                        color: Colors.white70
                      )
                    ),
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 18,vertical: 5),
                  ),
                  onPressed: (){
                print("Pressed");
              }, child: Text('Press here')),

              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  textStyle: TextStyle(fontSize: 18)
                ),
                  onPressed: (){
                  print('pressed in TextButton');
                  }, child: Text('TextButton')),

              IconButton(onPressed: (){
                print('Tapped In Icon Button');
              }, icon: Icon(Icons.add_circle, color: Colors.teal,)),

              GestureDetector(
                onTap: (){
                  print('on tapped detected');
                },
                onDoubleTap: (){
                  print('on double tapped');
                },
                onLongPress: (){
                  print('on long Tapped');
                },
                child: Column(
                  children: [
                    Text('data'),
                    Icon(Icons.add_circle),
                    Row(
                      children: [
                        Text('This is a row'),
                      ],
                    )
                  ],
                ),
              ),

              InkWell(
                splashColor: Colors.teal,
                radius: 75,
                borderRadius: BorderRadius.circular(30),
                onTap: (){
                  print('on tapped detected');
                },
                onDoubleTap: (){
                  print('on double tapped');
                },
                onLongPress: (){
                  print('on long Tapped');
                },
                child: Column(
                  children: [
                    Text('data'),
                    Icon(Icons.add_circle),
                    Row(
                      children: [
                        Text('                                             This is a row'),
                      ],
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  maxLength: 25,
                  //enabled: false,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter your Email',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    labelText: "Email",
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(width: 4, color: Colors.black)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 4, color: Colors.orange),
                      borderRadius: BorderRadius.circular(16)
                    ),
                      enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 4, color: Colors.red)
                    ),
                      disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 4, color: Colors.green)
                    ),
                    fillColor: Colors.green.shade100,
                    filled: true,
                    prefixIcon: Icon(Icons.email_rounded)
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  maxLength: 14,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    hintStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(width: 4)
                    ),
                      prefixIcon: Icon(Icons.password_rounded),
                    fillColor: Colors.green.shade100,
                    filled: true
                  ),
                ),
              ),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(
                            width: 2,
                            color: Colors.white70
                        )
                    ),
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 18,vertical: 5),
                  ),
                  onPressed: (){
                    print("Logged In");
                  }, child: Text('Login')),
            ],
          ),
        )
    );
  }
}
