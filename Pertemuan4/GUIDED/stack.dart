import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Stack'),
        backgroundColor: Colors.tealAccent,
      ),
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 100,
            width: 100,
            color: Colors.red,
            child: Center(child: Text('Type A')),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 100,
            width: 100,
            color: Colors.yellowAccent,
            child: Center(child: Text('Type B')),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 100,
            width: 100,
            color: Colors.blueGrey,
            child: Center(child: Text('Type C')),
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 100,
            width: 100,
            color: Colors.lightBlue,
            child: Center(child: Text('Type D')),
          ),
        ],
      ),
    );
  }
}
