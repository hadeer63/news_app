import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/screens/home/categories_tab.dart';
import 'package:news_app/screens/home/drawer.dart';
import 'package:news_app/screens/home/news_tab.dart';
import 'package:news_app/screens/home/search/news_search_delegate.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news_app/screens/home/settings_tab.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "layout";

  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    List<CategoryModel> catories = CategoryModel.getCategories(context);
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
          drawer: DrawerTab(onDrawerClicked),
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () => showSearch(
                      context: context, delegate: NewsSearchDelegate()),
                  icon: const Icon(
                    Icons.search,
                    size: 32,
                  ))
            ],
            centerTitle: true,
            backgroundColor: Colors.green,
            shape: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18))),
            title: Text(AppLocalizations.of(context)!.newsApp),
          ),
          body: categoryModel == null
              ? CategoriesTab(catories, onCategoryClicked)
              : NewsTab(categoryModel!.id)),
    );
  }

  CategoryModel? categoryModel = null;

  onCategoryClicked(category) {
    categoryModel = category;
    setState(() {});
  }

  onDrawerClicked(id) {
    if (id == DrawerTab.CAT_ID) {
      categoryModel = null;
    } else if (id == DrawerTab.SET_ID) {
      Navigator.pushNamed(context, SettingsView.routeName);
    }
    setState(() {
      Navigator.pop(context);
    });
  }
}