import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class CategoryModel{
  String name;
  String id;
  String image;
  Color color;

  CategoryModel(this.name, this.id, this.image, this.color);

  static List<CategoryModel> getCategories(context) {
    return [
      CategoryModel(AppLocalizations.of(context as BuildContext)!.sports,
          "sports", "assets/images/sports.png", Color(0xFFC91C22)),
      CategoryModel(AppLocalizations.of(context as BuildContext)!.general,
          "general", "assets/images/Politics.png", Color(0xFF003E90)),
      CategoryModel(AppLocalizations.of(context as BuildContext)!.health,
          "health", "assets/images/health.png", Color(0xFFED1E79)),
      //CategoryModel("Entertainment", "entertainment", "image", Color(0xFFED1E79)),
      // CategoryModel("General", "general", "image", Color(0xFFCF7E48)),
      CategoryModel(AppLocalizations.of(context as BuildContext)!.business,
          "business", "assets/images/bussines.png", Color(0xFFCF7E48)),
      CategoryModel(AppLocalizations.of(context as BuildContext)!.entertainment,
          "entertainment", "assets/images/environment.png", Color(0xFF4882CF)),
      CategoryModel(AppLocalizations.of(context as BuildContext)!.science,
          "science", "assets/images/science.png", Color(0xFFF2D352)),
      //CategoryModel("Technology", "technology", "image", Colors.red),
    ];
  }


}