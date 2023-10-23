import 'package:flutter/material.dart';
import 'package:news_app/models/SourcesResponse.dart';
import 'package:news_app/screens/source_item.dart';
import 'package:news_app/shared/network/remote/manager.dart';

class TabControllerWidget extends StatefulWidget {
  List<Sources>sources;
  TabControllerWidget(this.sources);

  @override
  State<TabControllerWidget> createState() => _TabControllerWidgetState(sources);
}

class _TabControllerWidgetState extends
State<TabControllerWidget> {
  List<Sources> sources;
  int selectedIndex=0;

  _TabControllerWidgetState(this.sources);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
            length: widget.sources.length,
            child: TabBar(
              isScrollable: true,
                onTap: (value){
                selectedIndex=value;
                setState(() {

                });
                },

                indicatorColor: Colors.transparent,
                tabs:widget.sources.map((source) => Tab(
                    child: SourceItem(source, widget.sources.indexOf(source)==selectedIndex))).toList()
            )),
        FutureBuilder(
          future: ApiManager.getNewsData(sources[selectedIndex].id??""),
            builder: (context, snapshot) {
              if(snapshot.connectionState==ConnectionState.waiting){
                return const Center(
                    child: CircularProgressIndicator());
              }
              if(snapshot.hasError){
                return const Center(
                    child: Text("Somethig went Wrong"));
              }
              var newsList=snapshot.data?.articles??[];
              return Expanded(
                child: ListView.builder(itemBuilder:(context, index) {
                  return Text(newsList[index].title??"") ;

                },
                  itemCount:  newsList.length,
                ),
              );
              },)
      ],
    );
  }
}
