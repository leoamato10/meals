import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = "/category-meals";
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routerArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryId = routerArgs["id"];
    final categoryTitle = routerArgs["title"];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text(
          "The recipes for the category!",
        ),
      ),
    );
  }
}
