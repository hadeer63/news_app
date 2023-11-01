// // import 'package:flutter/material.dart';
// // import 'package:news_app/models/SourcesResponse.dart';
// // import 'package:news_app/screens/home/cubit/cubit.dart';
// // import 'package:news_app/screens/home/news_card_item.dart';
// // import 'package:news_app/screens/home/source_item.dart';
// // import 'package:news_app/shared/network/remote/manager.dart';
// //
// // class TabControllerWidget extends StatefulWidget {
// //
// //   @override
// //   State<TabControllerWidget> createState() => _TabControllerWidgetState();
// // }
// //
// // class _TabControllerWidgetState extends State<TabControllerWidget> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: [
// //         DefaultTabController(
// //             length: HomeCubit.get(context).sourcesList.length,
// //             child: TabBar(
// //               isScrollable: true,
// //                 onTap: (value){
// //                 HomeCubit.get(context).changeSource(value);
// //                 },
// //                 indicatorColor: Colors.transparent,
// //                 tabs:
// //                 HomeCubit.get(context).sourcesList
// //                     .map((source) => Tab(
// //                     child: SourceItem(source,
// //                         HomeCubit.get(context).sourcesList.indexOf(source)==HomeCubit.get(context).selectedIndex))).toList()
// //             )),
// //         Expanded(child: ListView.builder(
// //           itemBuilder: (context, index) {
// //             return NewsCardItem(
// //               HomeCubit.get(context).articleList[index]
// //             );
// //           },
// //           itemCount: HomeCubit.get(context).articleList.length,
// //         )),
// //       ],);
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:news_app/screens/home/cubit/cubit.dart';
// import 'package:news_app/screens/home/source_item.dart';
//
// import 'news_card_item.dart';
//
// class TabControllerWidget extends StatelessWidget {
//   const TabControllerWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         DefaultTabController(
//             length: HomeCubit.get(context).sourcesList.length,
//             child: TabBar(
//               isScrollable: true,
//               onTap: (index) {
//                 HomeCubit.get(context).changeSource(index);
//               },
//               indicatorColor: Colors.transparent,
//               tabs: HomeCubit.get(context)
//                   .sourcesList
//                   .map((source) => Tab(
//                 child: SourceItem(
//                     source,
//                     HomeCubit.get(context)
//                         .sourcesList
//                         .indexOf(source) ==
//                         HomeCubit.get(context).selectedIndex),
//               ))
//                   .toList(),
//             )),
//         Expanded(
//           child: ListView.builder(
//             itemBuilder: (context, index) {
//               return NewsCardItem(HomeCubit.get(context).articleList[index]);
//             },
//             itemCount: HomeCubit.get(context).articleList.length,
//
//           ),
//         )
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:news_app/screens/home/cubit/cubit.dart';
import 'package:news_app/screens/home/source_item.dart';

import 'news_card_item.dart';

class TabControllerWidget extends StatelessWidget {
  const TabControllerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
            length: HomeCubit.get(context).sourcesList.length,
            child: TabBar(
              isScrollable: true,
              onTap: (index) {
                HomeCubit.get(context).changeSource(index);
              },
              indicatorColor: Colors.transparent,
              tabs: HomeCubit.get(context)
                  .sourcesList
                  .map((source) => Tab(
                        child: SourceItem(
                            source,
                            HomeCubit.get(context)
                                    .sourcesList
                                    .indexOf(source) ==
                                HomeCubit.get(context).selectedIndex),
                      ))
                  .toList(),
            )),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return NewsCardItem(HomeCubit.get(context).articles[index]);
            },
            itemCount: HomeCubit.get(context).articles.length,
          ),
        )
      ],
    );
  }
}