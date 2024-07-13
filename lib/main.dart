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
                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(
                //     content: Text('Money has been added.'),
                //     backgroundColor: Colors.blueGrey,
                //     duration: Duration(seconds: 1),
                //   ),
                // );
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
          // child: Text(
          //   'Hello World. we are starting a new application journey',
          //   textAlign: TextAlign.center,
          //   maxLines: 1,
          //   style: TextStyle(
          //     fontSize: 24,
          //     fontWeight: FontWeight.w600,
          //     backgroundColor: Colors.purple,
          //     color: Colors.white,
          //     overflow: TextOverflow.ellipsis,
          //   ),
          // ),
          //child: Icon(Icons.android, size: 84, color: Colors.green,),
          //child: Image.network('https://semaphoreci.com/wp-content/uploads/2021/05/Eric-312.png', width: 300, height: 500, fit: BoxFit.fill,),
          //child: Image.asset('images/sohel.jpg', width: 300, height: 300, fit: BoxFit.cover ,),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Greeting from '),
                  Text('Sohel'),
                  Text('    '),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.date_range),
                          Text('Date'),
                        ],
                      ),
                      Text('12-07-2024'),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
