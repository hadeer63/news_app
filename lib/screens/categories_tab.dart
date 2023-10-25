import 'package:flutter/material.dart';
import 'package:news_app/screens/category_item.dart';
import 'package:provider/provider.dart';
import '../models/category_model.dart';
import '../provider/my_provider.dart';

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
          SizedBox(
            height: 7,
          ),
          Text(" Pick your category\n of interest",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),),
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
                    .toList()),
          )
        ],
      ),
    );
  }
}
