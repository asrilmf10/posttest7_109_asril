import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/all_recipe.dart';
import './recipe_data.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Recipes>(
      builder: (context, recipeData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final data = recipeData.recipes[index];
            return RecipeData(
              recipeName: data.name,
              recipeDesc: data.description,
            );
          },
          itemCount: recipeData.recipeCount,
        );
      },
    );
  }
}
