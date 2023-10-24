import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/screens/categories_tab.dart';
import 'package:news_app/screens/drawer.dart';
import 'package:news_app/screens/news_tab.dart';
import 'package:news_app/screens/tabs_controller.dart';
import 'package:news_app/shared/network/remote/manager.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = 'layout';

  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories = CategoryModel.getCategories();
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
            backgroundColor: Colors.green,
            shape: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18))),
            title: const Text("News"),
          ),
          body: categoryModel == null
              ? CategoriesTab(categories, onCategoryClicked)
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
    } else if (id == DrawerTab.SET_ID) {}
    setState(() {
      Navigator.pop(context);
    });
  }
}
