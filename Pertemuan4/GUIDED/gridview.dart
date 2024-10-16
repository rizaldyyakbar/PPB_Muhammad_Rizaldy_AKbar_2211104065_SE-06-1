import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Praktikum4'),
        backgroundColor: Colors.blueAccent,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.all(12),
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text('Gridview 1'),
                Icon(Icons.add),
              ],
            ),
            color: Colors.red,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text('Gridview 2'),
                Icon(Icons.account_circle_sharp),
                Icon(
                  Icons.add_location_alt,
                )
              ],
            ),
            color: Colors.blueAccent,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Gridview 3'),
            color: Colors.greenAccent,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Gridview 4'),
            color: Colors.lightGreenAccent,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Gridview 5'),
            color: Colors.yellowAccent,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Gridview 6'),
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}
