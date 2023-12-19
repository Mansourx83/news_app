import 'package:flutter/material.dart';
import 'package:news_app/Widgets/articles.dart';
import 'package:news_app/models/articles_model.dart';

class ListOfPosts extends StatelessWidget {
  final List<ArticlesModel> article;

   ListOfPosts({super.key, required this.article});
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        // shrinkWrap: true,
        //not best solution cuse you load in your app by build all childern in same time
        padding: EdgeInsets.all(4),
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: article.length,
        itemBuilder: (context, index) {
          return Articles(
            article: article[index],
          );
        },
      ),
    );
  }
}
