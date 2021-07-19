import 'package:flutter/material.dart';

class Bottom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        height: 50,
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                size: 18
              ),
              child: Text("home", style: TextStyle(fontSize: 9),),
            ),Tab(
              icon: Icon(
                Icons.search_outlined,
                size: 18
              ),
              child: Text("Search", style: TextStyle(fontSize: 9),),
            ),Tab(
              icon: Icon(
                Icons.save_alt,
                size: 18
              ),
              child: Text("Save", style: TextStyle(fontSize: 9),),
            ),Tab(
              icon: Icon(
                Icons.list_alt,
                size: 18
              ),
              child: Text("List", style: TextStyle(fontSize: 9),),
            ),
          ],
        ),
      ),
    );
  }
}