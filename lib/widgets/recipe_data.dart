import 'package:flutter/material.dart';

class RecipeData extends StatelessWidget {
  final String recipeName;
  final String recipeDesc;
  const RecipeData({
    super.key,
    required this.recipeName,
    required this.recipeDesc,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        recipeName,
        style: Theme.of(context).textTheme.labelLarge,
      ),
      trailing: IconButton(
        icon: Icon(
          Icons.favorite_outline_outlined,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      onTap: () {},
    );
  }
}
