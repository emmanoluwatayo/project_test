import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_test/config/app_colors.dart';
import 'package:project_test/config/app_image.dart';
import 'package:project_test/model/news_media_model.dart';
import 'package:http/http.dart' as http;
import 'package:project_test/screens/custom_list/customList.dart';
import 'package:project_test/service/api_service.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _searchController = TextEditingController();

   ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PsColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 30,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hi Victoria',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Good Morning',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Image.asset(
                    AppImage.profileImage,
                    scale: 4,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  controller: _searchController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                    filled: true,
                    fillColor: PsColors.whiteColor,
                    border: const OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide()),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 12),
                    suffixIconConstraints: const BoxConstraints(
                      minHeight: 37,
                      minWidth: 17,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(
                        right: 7.0,
                        top: 5,
                        bottom: 5,
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 30,
                          width: 82,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.green,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.search,
                              size: 16,
                              color: PsColors.whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
         FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<NewsMedia>> snapshot) {
          if (snapshot.hasData) {
            List<NewsMedia>? articles = snapshot.data;
            return Expanded(
              child: ListView.builder(
                itemCount: articles?.length,
                itemBuilder: (context, index) => customListTile(articles![index], context)
              ),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
          ],
        ),
      ),
    );
  }
}
