import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Listview'),
        backgroundColor: Colors.tealAccent,
      ),
      body: ListView(
        // scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
            child: Center(child: Text('Type A')),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.yellowAccent,
            child: Center(child: Text('Type B')),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.blueGrey,
            child: Center(child: Text('Type C')),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.lightBlue,
            child: Center(child: Text('Type D')),
          ),
        ],
      ),
    );
  }
}
