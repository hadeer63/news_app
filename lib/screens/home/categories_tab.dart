import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import 'category_item.dart';

class CategoriesTab extends StatelessWidget {
  List<CategoryModel> categories;

  Function onClick;

  CategoriesTab(this.categories, this.onClick);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pick your category of interest",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
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
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}