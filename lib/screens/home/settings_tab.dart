import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/screens/home/categories_tab.dart';
import 'package:news_app/screens/home/drawer.dart';
import 'package:news_app/screens/home/news_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsView extends StatefulWidget {
  static const String routeName = "Settings";

  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    List<CategoryModel> catories = CategoryModel.getCategories(context);
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
          drawer: DrawerTab(onDrawerClicked),
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.green,
            shape: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18))),
            title: Text(AppLocalizations.of(context)!.news),
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
      Navigator.push(context, SettingsView.routeName as Route<Object?>);
    }
    setState(() {
      Navigator.pop(context);
    });
  }
}
