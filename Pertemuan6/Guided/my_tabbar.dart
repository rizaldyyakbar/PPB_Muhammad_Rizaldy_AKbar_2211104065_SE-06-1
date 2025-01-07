import 'package:flutter/material.dart';

class MyTabbar extends StatefulWidget {
  const MyTabbar({super.key});

  @override
  State<MyTabbar> createState() => _MyTabbarState();
}

class _MyTabbarState extends State<MyTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Tab Bar'),
          backgroundColor: Colors.lightBlue,
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: 'Favorite',
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: 'Settings',
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text("Ini Halaman Home"),
            ),
            Center(
              child: Text("Ini Halaman Favorite"),
            ),
            Center(
              child: Text("Ini Halaman Settings"),
            ),
          ],
        ),
        // bottomNavigationBar: BottomNavigationBar(items: [
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.home),
        //     label: 'Home',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.favorite),
        //     label: 'Favorite',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.settings),
        //     label: 'Settings',
        //   ),
        // ]),
      ),
    );
  }
}
