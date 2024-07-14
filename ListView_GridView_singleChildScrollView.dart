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
  List<String> studentList = ['Sohel', 'Rana', 'Juwel', 'Jalal', 'Siam'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
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
      ),
      /*body: SingleChildScrollView(
          child: Column(
            children: [
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),

            ],
          ),
        )    */

      /*body: ListView(
        //scrollDirection: Axis.horizontal,
        children: [
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
        ],
      ),
      */

      /*body: ListView.builder(
        itemCount: 100,
          itemBuilder: (context, index){
          return Text('${index+1}', style: TextStyle(fontSize: 32),);
          }),*/

      /*body: ListView.builder(
          itemCount: studentList.length,
          itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(studentList[index], style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              Divider()
            ],
          ));
      }),*/

      /*body: ListView.separated(
          itemCount: studentList.length,
          itemBuilder: (context, index){
            return Text(studentList[index], style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600));
          },
          separatorBuilder: (context, index){
            return Divider(
              height: 32,
              thickness: 2,
              endIndent: 16,
              indent: 8,
              color: Colors.blueGrey,
            );
    },
          ),*/

      /*body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        children: [
          Text('data1'),
          Text('data2'),
          Text('data3'),
          Text('data4'),
          Text('data5'),
          Text('data6'),
          Text('data7'),
          Text('data8'),
          Text('data9'),
          Text('data10')
        ],
      ),        */

      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: studentList.length,
                itemBuilder: (context, index){
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(studentList[index], style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                          Divider()
                        ],
                      ));
                }),
            GridView.builder(
              shrinkWrap: true,
                itemCount: 100,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Text('Roll- ${index + 1}'),
                      //Text(studentList[index])
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
