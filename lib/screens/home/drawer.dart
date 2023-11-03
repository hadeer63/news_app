import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news_app/bottom_sheet/language_bottom_sheet.dart';
import 'package:news_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

class DrawerTab extends StatefulWidget {
  Function onClick;

  DrawerTab(this.onClick, {super.key});

  static int CAT_ID = 1;
  static int SET_ID = 2;

  @override
  State<DrawerTab> createState() => _DrawerTabState();
}

class _DrawerTabState extends State<DrawerTab> {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return SafeArea(
      child: Container(
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
                child: Text(
                  AppLocalizations.of(context)!.newsApp,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.list, color: Color(0xFF000000)),
                InkWell(
                  onTap: () {
                    widget.onClick(DrawerTab.CAT_ID);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(AppLocalizations.of(context)!.category,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.settings,
                  color: Color(0xFF000000),
                ),
                // InkWell(
                //   onTap: () {
                //     widget.onClick(DrawerTab.SET_ID);
                //   },
                //   child: Padding(
                //     padding: const EdgeInsets.all(18.0),
                //     child: Text(
                //       AppLocalizations.of(context)!.settings,
                //       style:
                //           TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(AppLocalizations.of(context)!.language,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  showLanguageBottomSheet();
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(color: Colors.blueGrey)),
                  child: Text(
                      pro.languageCode == "en"
                          ? AppLocalizations.of(context)!.english
                          : AppLocalizations.of(context)!.arabic,
                      style: TextStyle(color: Colors.green, fontSize: 18)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        shape: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12))),
        builder: (context) => LanguageBottomSheet());
  }
}
