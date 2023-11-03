import 'package:flutter/material.dart';
import 'package:news_app/screens/home/cubit/cubit.dart';
import 'package:news_app/screens/home/news_card_item.dart';
import 'package:news_app/shared/styles/myThemedata.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NewsSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () => showResults(context), icon: const Icon(Icons.search))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(Icons.close));
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildSuggestions(context);
    // if(query.isEmpty){
    //   return Center(child: Text("Suggestions"),);
    // }
    // return FutureBuilder(
    //   future: HomeCubit.searchNews(query),
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return Center(
    //         child: CircularProgressIndicator(
    //           color: Theme.of(context).primaryColor,
    //         ),
    //       );
    //     } else if (snapshot.hasError) {
    //       return Center(
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             const Text("Something went Wrong"),
    //             ElevatedButton(onPressed: () {}, child:const Text("Try Again"))
    //           ],
    //         ),
    //       );
    //     }
    //     if (snapshot.data?.status != "ok") {
    //       return Center(
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //            const Text("Something went Wrong"),
    //             ElevatedButton(onPressed: () {}, child: const Text("Try Again"))
    //           ],
    //         ),
    //       );
    //     }
    //     // var newsList=snapshot.data?.articles??[];
    //     return ListView.builder(
    //       itemBuilder: (context, index) {
    //       return NewsCardItem(HomeCubit.get(context).articles[index] );
    //     },itemCount: HomeCubit.get(context).articles.length
    //     );
    //   }
    // );
    //   Column(
    //   children: [
    //     DefaultTabController(
    //         length: HomeCubit.get(context).sourcesList.length,
    //         child: TabBar(
    //           isScrollable: true,
    //           onTap: (index) {
    //             HomeCubit.get(context).changeSource(index);
    //           },
    //           indicatorColor: Colors.transparent,
    //           tabs: HomeCubit.get(context)
    //               .sourcesList
    //               .map((source) => Tab(
    //             child: SourceItem(
    //                 source,
    //                 HomeCubit.get(context)
    //                     .sourcesList
    //                     .indexOf(source) ==
    //                     HomeCubit.get(context).selectedIndex),
    //           ))
    //               .toList(),
    //         )),
    //     Expanded(
    //       child: ListView.builder(
    //         itemBuilder: (context, index) {
    //           return NewsCardItem(HomeCubit.get(context).articles[index]);
    //         },
    //         itemCount: HomeCubit.get(context).articles.length,
    //       ),
    //     )
    //   ],
    // );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Center(
        child: Text(AppLocalizations.of(context)!.suggestions),
      );
    }
    return FutureBuilder(
        future: HomeCubit.searchNews(query),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Something went Wrong"),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Try Again"))
                ],
              ),
            );
          }
          if (snapshot.data?.status != "ok") {
            return Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Something went Wrong"),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Try Again"))
                ],
              ),
            );
          }
          // var newsList=snapshot.data?.articles??[];
          return ListView.builder(
              itemBuilder: (context, index) {
                return NewsCardItem(HomeCubit.get(context).articles[index]);
              },
              itemCount: HomeCubit.get(context).articles.length);
        });
  }
// @override
// ThemeData appBarTheme(BuildContext context) {
//   return MyThemeData.lightTheme;
// }
}
