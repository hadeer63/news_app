// // class SourcesResponse{
// //   SourcesResponse({
// //     this.status,
// //     this.code,
// //     this.message,
// //     this.sources,
// //   });
// //   SourcesResponse.fromJson(dynamic json){
// //     status=json["status"];
// //     code=json["code"];
// //     message=json["message"];
// //     if(json['sources'] != null){
// //       sources=[];
// //       json['sources'].forEach((v){
// //         sources?.add(Sources.fromJson(v));
// //       });
// //   }
// //   }
// //   String? status;
// //   String? code;
// //   String? message;
// //   List<Sources>? sources;
// //
// // }
// //
// // class Sources{
// //   String? id;
// //   String? name;
// //   String? description;
// //   String? url;
// //   String? category;
// //   String? language;
// //   String? country;
// //   Sources({
// //     this.id,
// //     this.name,
// //     this.description,
// //     this.url,
// //     this.category,
// //     this.language,
// //     this.country,
// //   });
// //   Sources.fromJson(Map<String,dynamic> json){
// //     id=json['id'];
// //     name=json['name'];
// //     description=json['description'];
// //     url=json['url'];
// //     category=json['category'];
// //     language=json['language'];
// //     country=json['country'];
// //   }
// //
// //
// //
// //
// //
// // }
//
// import 'package:news_app/screens/home/screen_model.dart';
// class NewsResponse {
//   NewsResponse({
//     this.status,
//     this.code,
//     this.message,
//     this.totalResults,
//     this.articles,
//   });
//
//   NewsResponse.fromJson(dynamic json) {
//     status = json['status'];
//     code = json['code'];
//     message = json['message'];
//     totalResults = json['totalResults'];
//     if (json['articles'] != null) {
//       articles = [];
//       json['articles'].forEach((v) {
//         articles?.add(Articles.fromJson(v));
//       });
//     }
//   }
//
//   String? status;
//   String? code;
//   String? message;
//   int? totalResults;
//   List<Articles>? articles;
//
//
// }
//
// class Articles {
//   Articles({
//     this.source,
//     this.author,
//     this.title,
//     this.description,
//     this.url,
//     this.urlToImage,
//     this.publishedAt,
//     this.content,
//   });
//
//   Articles.fromJson(dynamic json) {
//     source = json['source'] != null ? Sources.fromJson(json['source']) : null;
//     author = json['author'];
//     title = json['title'];
//     description = json['description'];
//     url = json['url'];
//     urlToImage = json['urlToImage'];
//     publishedAt = json['publishedAt'];
//     content = json['content'];
//   }
//
//   Sources? source;
//   String? author;
//   String? title;
//   String? description;
//   String? url;
//   String? urlToImage;
//   String? publishedAt;
//   String? content;
//
// }

class SourcesResponse {
  SourcesResponse({
    this.status,
    this.message,
    this.code,
    this.sources,
  });

  SourcesResponse.fromJson(dynamic json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    if (json['sources'] != null) {
      sources = [];
      json['sources'].forEach((v) {
        sources?.add(Sources.fromJson(v));
      });
    }
  }

  String? status;
  String? code;
  String? message;
  List<Sources>? sources;
}

class Sources {
  Sources({
    this.id,
    this.name,
    this.description,
    this.url,
    this.category,
    this.language,
    this.country,
  });

  Sources.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    url = json['url'];
    category = json['category'];
    language = json['language'];
    country = json['country'];
  }

  String? id;
  String? name;
  String? description;
  String? url;
  String? category;
  String? language;
  String? country;
}