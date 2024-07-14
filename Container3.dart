//Container

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
                    context: context,
                    builder: (context) {
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
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.white, width: 3),

                    image: DecorationImage(
                      image: AssetImage('images/image1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 7,
                      blurRadius: 5,
                      offset: Offset(0,0)
                    ),
                  ]
                ),
                alignment: Alignment.center,
                child: Text('Sample', style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border(                                     //borderRadius does not work for different colors of a container
                      top: BorderSide(color: Colors.black, width: 3.5),
                      bottom: BorderSide(color: Colors.red, width: 3.5),
                      left: BorderSide(color: Colors.white, width: 3.5),
                      right: BorderSide(color: Colors.blue, width: 3.5),
                      ),
                      image: DecorationImage(
                        image: AssetImage('images/image1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 7,
                        blurRadius: 5,
                        offset: Offset(0,0)
                      ),
                    ]
                  ),
                  alignment: Alignment.center,
                  child: Text('Sample', style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ),
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border(                                     //borderRadius does not work for different colors of a container
                            top: BorderSide(color: Colors.black, width: 3.5),
                            bottom: BorderSide(color: Colors.red, width: 3.5),
                            left: BorderSide(color: Colors.white, width: 3.5),
                            right: BorderSide(color: Colors.blue, width: 3.5),
                          ),
                          image: DecorationImage(
                            image: AssetImage('images/image1.jpg'),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 7,
                                blurRadius: 5,
                                offset: Offset(0,0)
                            ),
                          ]
                      ),
                      alignment: Alignment.center,
                      child: Text('Sample', style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border(                                     //borderRadius does not work for different colors of a container
                            top: BorderSide(color: Colors.redAccent, width: 3.5),
                            bottom: BorderSide(color: Colors.black, width: 3.5),
                            left: BorderSide(color: Colors.white, width: 3.5),
                            right: BorderSide(color: Colors.blueAccent, width: 3.5),
                          ),
                          image: DecorationImage(
                            image: AssetImage('images/sohel.jpg'),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 7,
                                blurRadius: 5,
                                offset: Offset(0,0)
                            ),
                          ]
                      ),
                      alignment: Alignment.center,
                      child: Text('Sample', style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border(                                     //borderRadius does not work for different colors of a container
                            top: BorderSide(color: Colors.black, width: 3.5),
                            bottom: BorderSide(color: Colors.red, width: 3.5),
                            left: BorderSide(color: Colors.orange, width: 3.5),
                            right: BorderSide(color: Colors.blue, width: 3.5),
                          ),
                          image: DecorationImage(
                            image: AssetImage('images/image1.jpg'),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 7,
                                blurRadius: 5,
                                offset: Offset(0,0)
                            ),
                          ]
                      ),
                      alignment: Alignment.center,
                      child: Text('Sample', style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ),
                  ),
                ],

              ),
            ],
          ),

        ));
  }
}
