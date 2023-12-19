import 'package:flutter/material.dart';
import 'package:news_app/list/ListViewBuilder.dart';

import 'package:news_app/list/list_of_categories.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ' Cloud',
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          ListCategories(),
          Expanded(
            child: ListViewBuilder(category: 'general'),
          ),
        ],
      ),
    );
  }
}
