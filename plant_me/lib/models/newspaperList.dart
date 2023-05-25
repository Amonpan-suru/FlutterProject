import 'package:flutter/material.dart';
import 'package:plant_me/models/newspaper.dart';
import 'package:plant_me/pages/news_detail_page.dart';

class Newspaper extends ChangeNotifier{
  //list of news
  List<News> newsAricle = [
    News(
      newstopic: '21 Best Indoor Trees and Tropical Plants to Grow in Your Living Room',
      author: 'By Erika Owen and Amanda Sims', 
      imagePath: 'assets/img/17.jpg', 
      detail: 'The best indoor trees can transform even the smallest shoebox apartment into a lush, tropical paradise. A few things are nonnegotiable to keep so grand a specimen alive and well:\nMake sure you have tall-enough ceilings to house it comfortably.\nYou’ll also need enough natural light (this can be bright indirect light or bright direct light, depending on the tree) to make it feel like home (home being its native habitat, of course). So no, the dark interior corner of a room without direct sunlight probably isn’t the best place for it.\nYes, you’re probably better off buying a young tree and letting it grow and adapt to your home’s conditions (which will be cheaper than buying a huge tree anyway). Many trees and tropical indoor plants can thrive indoors if you follow a committed plant care routine.\nRemember: The growing season is year-round when you’re caring for indoor greenery.'
    ),

    News(
      newstopic: '21 Best Indoor Trees and Tropical Plants to Grow in Your Living Room',
      author: 'By Erika Owen and Amanda Sims',
      imagePath: 'assets/img/16.jpg', 
      detail: 'bb'
    ),
  ];

  List<News> currentArticle = [];
  // get list of news for show
  List<News> getNewsList() {
    return newsAricle;
  }

  News getCurrentAticle(){
    return currentArticle[0];
  }

  void clickReadNews(News news){
    currentArticle.clear();
    currentArticle.add(news);
    notifyListeners();
  }

}