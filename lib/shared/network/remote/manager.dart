import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:news_app/models/SourcesResponse.dart';
import 'package:news_app/models/newsResponse.dart';
import 'package:news_app/shared/components/constants.dart';

class ApiManager {
  static Future<SourcesResponse> getNews() async{
    Uri url=Uri.https(BASE_URL,"/v2/top-headlines/sources",
    {
      "apiKey":API_KEY

    });
   Response response=await http.get(url);
   var jsonData=jsonDecode(response.body);
   SourcesResponse data=SourcesResponse.fromJson(jsonData);
   return data;
  }

  static Future<NewsResponse> getNewsData(String sourcesID) async{
    Uri url=Uri.https(BASE_URL,"/v2/everything",{
      "apiKey":API_KEY,
      "sources":sourcesID
    });
    http.Response response=await http.get(url);

    var jsonData=jsonDecode(response.body);

    NewsResponse newsResponse=NewsResponse.fromJson(jsonData);
    return newsResponse;
  }


}
