import 'dart:collection';

import 'package:flutter/material.dart';

import './recipe.dart';

class Recipes extends ChangeNotifier {
  final List<Recipe> _recipes = [
    Recipe(
      name: 'Resep Ayam Lalap',
      description: "",
    ),
    Recipe(
      name: 'Resep Sate Sapi',
      description: "",
    ),
    Recipe(
      name: 'Resep Tumis Kangkung',
      description: "",
    ),
    Recipe(
      name: 'Resep Ikan Saus Padang',
      description: "",
    ),
    Recipe(
      name: 'Resep Telur Mata Sapi',
      description: "",
    ),
  ];

  UnmodifiableListView<Recipe> get recipes {
    return UnmodifiableListView(_recipes);
  }

  int get recipeCount {
    return _recipes.length;
  }
}
