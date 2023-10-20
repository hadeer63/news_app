import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:news_app/models/SourcesResponse.dart';

class ApiManager {
  static Future<SourcesResponse> getSources() async{
    Uri url=Uri.https("newsapi.org","/v2/top-headlines/sources",
    {
      "apiKey":"dc3d106e730c4256b8c275d9da58d090"

    });
   Response response=await http.get(url);
   var jsonData=jsonDecode(response.body);
   SourcesResponse data=SourcesResponse.fromJson(jsonData);
   return data;
  }
}
