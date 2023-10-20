import 'package:flutter/material.dart';
import 'package:news_app/shared/network/remote/manager.dart';

class HomeLayout extends StatelessWidget {
  static const String routeName='layout';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
      ),
      body: FutureBuilder(future: ApiManager.getSources(),
          builder: (context, snapshot) {
            if(snapshot.connectionState==ConnectionState.waiting){
              return Center(
                  child: CircularProgressIndicator());
            }
            if(snapshot.hasError){
              return Center(
                  child: Text("Somethig went Wrong"));
            }

            var sources=snapshot.data?.sources??[];
            return ListView.builder(itemBuilder: (context, index) {
              return Text(sources[index].name ?? "");
            },
              itemCount:  sources.length,
            );

          },),
    );
  }
}
