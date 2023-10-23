import 'package:news_app/models/SourcesResponse.dart';

class NewsResponse {
  NewsResponse({
      this.status, 
      //this.code,
      //this.message,
      this.totalResults,
      this.articles,});

  NewsResponse.fromJson(dynamic json) {
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = [];
      json['articles'].forEach((v) {
        articles?.add(Articles.fromJson(v));
      });
    }
  }
  String? status;
  int? totalResults;
  List<Articles>? articles;

}

class Articles {
  Articles({
      this.source, 
      this.author, 
      this.title, 
      this.description, 
      this.code,
      this.message,
      this.url,
      this.urlToImage, 
      this.publishedAt, 
      this.content,});

  Articles.fromJson(dynamic json) {
    source = json['source'] != null ? Sources.fromJson(json['source']) : null;
    author = json['author'];
    title = json['title'];
    code = json['code'];
    message = json['message'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }
  Sources? source;
  String? author;
  String? title;
  String? code;
  String? message;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

}

