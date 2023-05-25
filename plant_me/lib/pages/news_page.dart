import 'package:flutter/material.dart';
import 'package:plant_me/components/news_tile.dart';
import 'package:plant_me/models/newspaper.dart';
import 'package:plant_me/models/newspaperList.dart';
import 'package:plant_me/pages/news_detail_page.dart';
import 'package:provider/provider.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

  void ClickArticle(News news){
    Provider.of<Newspaper>(context,listen: false).clickReadNews(news);
    // alert user add plant
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailNewsPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Newspaper>(builder: (context, value, child) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Topic
        const Padding(
          padding: EdgeInsets.only(left : 30.0,top: 15),
          child: Text(
            'News',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ),

        const SizedBox(height: 40),

        //shop list
        Expanded(
          child: ListView.builder(
            itemCount: value.getNewsList().length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context,index) {
              // create plant
              News news = value.getNewsList()[index];  
              //return the shoe
              return NewsTile(
                news: news,
                onTap: () => ClickArticle(news),
              ); 
            }
          ),
        ),

        const Padding(
          padding: EdgeInsets.only(top: 10.0, left: 25,right: 25),
          child: Divider(
            color: Colors.white,
          ),
        )
      ],
    ),
    );
  }
}