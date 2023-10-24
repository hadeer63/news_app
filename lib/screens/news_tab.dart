import 'package:flutter/material.dart';
import 'package:news_app/screens/tabs_controller.dart';

import '../shared/network/remote/manager.dart';

class NewsTab extends StatelessWidget {
  String catId;

  NewsTab(this.catId);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiManager.getNews(catId),
      builder: (context, snapshot) {
        if(snapshot.connectionState==ConnectionState.waiting){
          return const Center(
              child: CircularProgressIndicator());
        }
        if(snapshot.hasError){
          return const Center(
              child: Text("Somethig went Wrong"));
        }

        var sources=snapshot.data?.sources??[];
        return TabControllerWidget(sources);

      },);
  }
}
