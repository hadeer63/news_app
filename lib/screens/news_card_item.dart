import 'package:flutter/material.dart';
import 'package:news_app/models/newsResponse.dart';

class NewsCardItem extends StatelessWidget {
  Articles articles;

  NewsCardItem(this.articles);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 12,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Colors.transparent
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 8,
            right: 8,
            left: 8
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                ),
                child: Image.network(articles.urlToImage??"",
                fit: BoxFit.fill,
                height: 230,),
              ),
              Text(articles.title??"",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),),
              Text(articles.description??"",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  )),
              Row(
                children: [
                  Expanded(child: Text(articles.author??"",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ))),
                  Text(articles.publishedAt?.substring(0,10)??"",
                  ),
                ],
              ),
            ],
          ),
        ),

      ),
    );
  }
}