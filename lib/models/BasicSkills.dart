// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BasicSkill {
  final int id, chefs, recipes;
  final String title, description, imageSrc;
  final Color color;

  BasicSkill(
      {required this.id,
      required this.chefs,
      required this.recipes,
      required this.title,
      required this.description,
      required this.imageSrc,
      required this.color});
}

// Demo list
List<BasicSkill> basicSkill = [
  BasicSkill(
    id: 1,
    chefs: 16,
    recipes: 95,
    title: "Belajar Dasar Literasi",
    description: "Kumpulan modul dan resource berkualitas",
    imageSrc: "assets/img/literasi.png",
    color: Color(0xFFD82D40),
  ),
  BasicSkill(
    id: 2,
    chefs: 8,
    recipes: 26,
    title: "Best of 2020",
    description: "Cook recipes for special occasions",
    imageSrc: "assets/img/numerasi.png",
    color: Color(0xFF90AF17),
  ),
  BasicSkill(
    id: 3,
    chefs: 10,
    recipes: 43,
    title: "Food Court",
    description: "What's your favorite food dish make it now",
    imageSrc: "assets/img/modul.png",
    color: Color(0xFF2DBBD8),
  ),
];
