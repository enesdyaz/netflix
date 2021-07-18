import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
   _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TopBar();
  }
}


class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('images/logo.jpeg', fit: BoxFit.contain, height: 15),
          Container(
            child: Text("TV PROGRAM", style: TextStyle(fontSize: 11)),
          ),Container(
            child: Text("Movie", style: TextStyle(fontSize: 11)),
          ),Container(
            child: Text("My List", style: TextStyle(fontSize: 11)),
          ),
        ],
      ),
    );
  }
}