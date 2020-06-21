import 'package:flutter/material.dart';
import 'package:test_app/home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget currentPage = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      //use endDrawer for Right side Drawer
      drawer:  Container(
        padding: EdgeInsets.all(16),
        width: 100,
        height: double.infinity,
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            CircleAvatar(
              radius: 33,
              backgroundImage: AssetImage('images/img1.jpg'),
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: Icon(Icons.people),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
