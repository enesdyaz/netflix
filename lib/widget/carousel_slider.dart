import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix/model/model_movie.dart';

class CarouselImage extends StatefulWidget {
  final List<Movie> movies;
  CarouselImage({required this.movies});
  _CarouselImageState createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  // state 정의
  late List<Movie> movies;
  late List<Widget> images;
  late List<String> keywords;
  late List<bool> likes;
  int _currentPage = 0;
  late String _currentKeyword;


  @override
  void initState() {
    super.initState();
    // 상위 클래스인 CarouselImage의 데이터를 사용하게 해줌
    movies = widget.movies;

    images = movies.map((e) => Image.asset('./images/'+e.poster)).toList();
    keywords = movies.map((e) => e.keyword).toList();
    likes = movies.map((e) => e.like).toList();
    _currentKeyword = keywords[0];
  }



  @override
  Widget build(BuildContext context) {
    // page 전환
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
          ),
          CarouselSlider(items: (images), options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                _currentPage = index;
                _currentKeyword = keywords[_currentPage];
              });
            }
          ),),
          
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
            child: Text(_currentKeyword, style: TextStyle(fontSize: 11),),
          ),
          Container(
            child: Row(
              children: [
                likes[_currentPage] ?
                    IconButton(onPressed: (){}, icon: Icon(Icons.check)) :
                    IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                Text("내가 찜한 콘텐츠", style: TextStyle(fontSize: 11),)
              ],
            ),
          )
        ],
      ),
    );
  }
}