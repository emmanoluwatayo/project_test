
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_test/model/news_media_model.dart';

class ApiService {
  final endPointUrl = "https://newsdata.io";
  final client = http.Client();

  Future<List<NewsMedia>> getArticle() async {
    
   

    final uri = Uri.parse('$endPointUrl/api/1/news?apikey=pub_200613bc00f4a121993df42f34ba9a057e156&language=en', );
    final response = await client.get(uri);
    var data = jsonDecode(response.body);
    print(data);
    var body = List<NewsMedia>.from( data['results'].map( (x) => NewsMedia.fromJson(x)));
;

    
   
    return body;
  }
}