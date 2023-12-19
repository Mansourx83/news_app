import 'package:flutter/material.dart';
import 'package:news_app/Widgets/categories.dart';
import 'package:news_app/models/categorie_model.dart';

class ListCategories extends StatelessWidget {
  final List model = [
    CategorieModel(pic: 'assets/business.jpg', text: 'Business'),
    CategorieModel(pic: 'assets/sports.jpg', text: 'Sports'),
    CategorieModel(pic: 'assets/health.jpg', text: 'Health'),
    CategorieModel(pic: 'assets/entertainment.webp', text: 'Entertainment'),
    CategorieModel(pic: 'assets/science.jpg', text: 'Science'),
    CategorieModel(pic: 'assets/technology.jpeg', text: 'Technology'),
  ];
  Widget build(BuildContext context) {
    return ClipRRect(
      child: SizedBox(
        height: 130,
        child: ListView.builder(
            padding: EdgeInsets.all(4),
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: model.length,
            itemBuilder: (context, index) {
              return Categories(
                model: model[index],
              );
            }),
      ),
    );
  }
}
