import 'package:flutter/material.dart';
import 'package:news_app/Screens/categorieview.dart';
import 'package:news_app/models/categorie_model.dart';

class Categories extends StatelessWidget {
  final CategorieModel model;

  const Categories({super.key, required this.model});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return CategorieView(
                  category: model.text,
                );
              },
            ),
          );
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset('${model.pic}')),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 75),
              child: Text(
                '${model.text}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
