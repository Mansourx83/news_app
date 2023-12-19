import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';

class Articles extends StatelessWidget {
  final ArticlesModel article;

  Articles({super.key, required this.article});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(article.photo ??
                  'https://4.bp.blogspot.com/-5b3iMZqrhAI/VZ84RotnGjI/AAAAAAAAAlw/jVJByfBdfAA/s640/page-not-found-688965_640%2B%25281%2529%2B%25281%2529.png'),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            article.script,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            article.subScript ?? ' ',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
