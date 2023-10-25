// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../bottom_sheet/language_bottom_sheet.dart';
// import '../provider/my_provider.dart';
//
// class SettingsTab extends StatefulWidget {
//   static const String routeName = 'layout';
//   //Function onClick;
//   SettingsTab({
//     //required this.onClick,
//     super.key});
//
//   @override
//   State<SettingsTab> createState() => _SettingsTabState();
// }
//
// class _SettingsTabState extends State<SettingsTab> {
//   @override
//   Widget build(BuildContext context) {
//    // var pro = Provider.of<MyProvider>(context);
//     return Padding(
//       padding: const EdgeInsets.all(18.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("Language",
//               style: TextStyle(
//                   color: Colors.green,
//                   fontWeight: FontWeight.bold)),
//           SizedBox(
//             height: 15,
//           ),
//           // InkWell(
//           //   onTap: () {
//           //     showLanguageBottomSheet();
//           //   },
//           //   child: Container(
//           //     alignment: Alignment.centerLeft,
//           //     margin: EdgeInsets.symmetric(horizontal: 18),
//           //     padding: EdgeInsets.symmetric(horizontal: 18),
//           //     width: double.infinity,
//           //     height: 48,
//           //     decoration: BoxDecoration(
//           //         color: Colors.white,
//           //         border: Border.all(color: Colors.green)),
//           //     child: Row(
//           //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           //       children: [
//           //         Text(
//           //             pro.languageCode == "en"
//           //                 ? "English"
//           //                 : "Arabic",
//           //             style: TextStyle(color: Colors.green)),
//           //         IconButton(
//           //             onPressed: () {
//           //               showLanguageBottomSheet();
//           //             },
//           //             icon: Icon(
//           //               Icons.keyboard_arrow_down_outlined,
//           //               color: Colors.green,
//           //             ))
//           //       ],
//           //     ),
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }
//   // Widget build(BuildContext context) {
//   //   return Padding(
//   //     padding: const EdgeInsets.all(8.0),
//   //     child: Column(
//   //       crossAxisAlignment: CrossAxisAlignment.start,
//   //       children: [
//   //         SizedBox(
//   //           height: 7,
//   //         ),
//   //         Text("Language",
//   //           style: TextStyle(
//   //               fontSize: 22,
//   //               fontWeight: FontWeight.bold
//   //           ),),
//   //         SizedBox(
//   //           height: 15,
//   //         ),
//           // Expanded(
//           //   child: GridView(
//           //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           //           crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12),
//           //       children: categories
//           //           .map((cat) => InkWell(
//           //           onTap: () {
//           //             onClick(cat);
//           //           },
//           //           child: CategoryItem(cat)))
//           //           .toList()),
//           // )
//     //     ],
//     //   ),
//     // );
//
//   showLanguageBottomSheet() {
//     showModalBottomSheet(
//         context: context,
//         shape: OutlineInputBorder(
//             borderSide: BorderSide(color: Colors.transparent),
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(12), topRight: Radius.circular(12))),
//         builder: (context) => LanguageBottomSheet());
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../bottom_sheet/language_bottom_sheet.dart';
// import '../provider/my_provider.dart';
//
// class SettingsTab extends StatefulWidget {
//   static const String routeName = 'layout';
//
//   SettingsTab({super.key}); //Function onClick;
//
//
//   @override
//   State<SettingsTab> createState() => _SettingsTabState();
// }
//
// class _SettingsTabState extends State<SettingsTab> {
//   @override
//   Widget build(BuildContext context) {
//     var pro = Provider.of<MyProvider>(context);
//     return Padding(
//       padding: const EdgeInsets.all(18.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("English",
//               style: TextStyle(
//                   color: Colors.green,
//                   fontWeight: FontWeight.bold)),
//           SizedBox(
//             height: 15,
//           ),
//           InkWell(
//             onTap: () {
//               showLanguageBottomSheet();
//             },
//             child: Container(
//               alignment: Alignment.centerLeft,
//               margin: EdgeInsets.symmetric(horizontal: 18),
//               padding: EdgeInsets.symmetric(horizontal: 18),
//               width: double.infinity,
//               height: 48,
//               decoration: BoxDecoration(
//                   color:  Colors.white,
//                   border: Border.all(color: Colors.blue)),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                       pro.languageCode == "en"
//                           ?"English"
//                           : "Arabic",
//                       style: TextStyle(color: Colors.blue)),
//                   IconButton(
//                       onPressed: () {
//                         showLanguageBottomSheet();
//                       },
//                       icon: Icon(
//                         Icons.keyboard_arrow_down_outlined,
//                         color: Colors.blue,
//                       ))
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//         ],
//       ),
//     );
//     //   Padding(
//     //   padding: const EdgeInsets.all(8.0),
//     //   child: Column(
//     //     crossAxisAlignment: CrossAxisAlignment.start,
//     //     children: [
//     //       SizedBox(
//     //         height: 7,
//     //       ),
//     //       Text("Language",
//     //         style: TextStyle(
//     //             fontSize: 17,
//     //             fontWeight: FontWeight.bold
//     //         ),),
//     //       SizedBox(
//     //         height: 15,
//     //       ),
//     //       InkWell(
//     //         onTap: () {
//     //           showLanguageBottomSheet();
//     //         },
//     //         child: Container(
//     //           alignment: Alignment.centerLeft,
//     //           margin: EdgeInsets.symmetric(horizontal: 18),
//     //           padding: EdgeInsets.symmetric(horizontal: 18),
//     //           width: double.infinity,
//     //           height: 48,
//     //           decoration: BoxDecoration(
//     //               color: Colors.white,
//     //               border: Border.all(color: Colors.green)),
//     //           child: Row(
//     //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     //             children: [
//     //               // Text(
//     //               //     pro.languageCode == "en"
//     //               //         ? "English"
//     //               //         : "Arabic",
//     //               //     style: TextStyle(color: Colors.blue)),
//     //               IconButton(
//     //                   onPressed: () {
//     //                     showLanguageBottomSheet();
//     //                   },
//     //                   icon: Icon(
//     //                     Icons.keyboard_arrow_down_outlined,
//     //                     color: Colors.blue,
//     //                   ))
//     //             ],
//     //           ),
//     //         ),
//     //       )
//     //     ],
//     //   ),
//     // );
//   }
//
//   showLanguageBottomSheet() {
//     showModalBottomSheet(
//         context: context,
//         shape: OutlineInputBorder(
//             borderSide: BorderSide(color: Colors.transparent),
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(12), topRight: Radius.circular(12))),
//         builder: (context) => LanguageBottomSheet());
//   }
// }


import 'package:flutter/material.dart';
import 'package:news_app/layout/home_layout.dart';
import 'package:news_app/screens/drawer.dart';

import '../models/category_model.dart';

class SettingsTab extends StatefulWidget {
  static const String routeName = 'settings';
  Function onClick;
  SettingsTab(this.onClick,{super.key});


  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  late Function onClick;
  @override
  Widget build(BuildContext context) {

     int CAT_ID = 1;
     int SET_ID = 2;
    List<CategoryModel> categories = CategoryModel.getCategories();
    return Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.fill)),
      child: Scaffold(
        drawer: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.green,
                child: Center(
                  child: Text("News App!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.list,
                      color: Color(0xFF000000)),
                  InkWell(
                    onTap: () {
                      onClick(CAT_ID);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text("Categories",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          )),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.settings,
                    color: Color(0xFF000000),),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, SettingsTab.routeName);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text("Settings",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.green,
          shape: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(18))),
          title: const Text("News"),
        ),
        body: Column(
          children: [
            Text("Language",style:
              TextStyle(
                color: Colors.green
              ),)
          ],
        ),

      ),
    );
  }
  // CategoryModel? categoryModel = null;
  // onDrawerClicked(id) {
  //   if (id == DrawerTab.CAT_ID) {
  //     categoryModel = null;
  //   } else if (id == DrawerTab.SET_ID) {}
  //   setState(() {
  //     Navigator.pushNamed(context, SettingsTab.routeName);
  //   });
  // }
}


