import 'package:flutter/material.dart';
import 'package:netflix/model/model_movie.dart';
import 'package:netflix/widget/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
   _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title':'사랑의 불시착',
      'keyword':'사랑/로맨스/판타지',
      'poster':'love.jpeg',
      'like':false
    })
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            CarouselImage(movies: movies),
            TopBar()
          ],
        )
      ],
    );
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