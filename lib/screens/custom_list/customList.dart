import 'package:flutter/material.dart';
import 'package:project_test/model/news_media_model.dart';
import 'package:project_test/screens/article/news_details_page.dart';

Widget customListTile(NewsMedia article, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ArticlePage(newsMedia: article)));
    },
    child: Container(
      margin: EdgeInsets.all(12.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 3.0,
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(article.imageUrl ?? 'https://i2-prod.manchestereveningnews.co.uk/incoming/article26996079.ece/ALTERNATES/s810/1_Screenshot-2023-05-25-at-232029.jpg' as String, ), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ) ,

          SizedBox(height: 8.0),
          Container(
            padding: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text(
              '${article.pubDate}',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '${article.title}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          )
        ],
      ),
    ),
  );
}
