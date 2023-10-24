import 'package:flutter/material.dart';
import 'package:news_app/screens/category_item.dart';

import '../models/category_model.dart';

class CategoriesTab extends StatelessWidget {
  List<CategoryModel> categories;
  Function onClick;
  CategoriesTab(this.categories, this.onClick);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Pick your categoryof interest"),
        Expanded(
          child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12),
              children: categories
                  .map((cat) => InkWell(
                      onTap: () {
                        onClick(cat);
                      },
                      child: CategoryItem(cat)))
                  .toList()),
        )
      ],
    );
  }
}
