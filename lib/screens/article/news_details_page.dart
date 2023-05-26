

import 'package:flutter/material.dart';
import 'package:project_test/model/news_media_model.dart';

class ArticlePage extends StatelessWidget {
  final NewsMedia? newsMedia;

  const ArticlePage({ this.newsMedia});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
       leading: Icon(Icons.arrow_back_rounded, color: Colors.black,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const  SizedBox(height: 5,),
                Text('${newsMedia?.title}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),),
                     const  SizedBox(height: 10,),
                      Text('${newsMedia?.pubDate}',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12.0,
                    ),),
                const  SizedBox(height: 20,),
                  Container(
                    height: 200.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(newsMedia!.imageUrl as String), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ) ,

                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Text(
                      '${newsMedia?.creator }',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    '${newsMedia!.description}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ),
                   const  SizedBox(height: 10,),
                    Text(
                    '${newsMedia!.content}',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 10.0,
                    ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}