import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:news_app/list/list_of_articles.dart';
import 'package:news_app/services/news_service.dart';

class ListViewBuilder extends StatefulWidget {
  final String category;

  const ListViewBuilder({super.key, required this.category});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(dio: Dio()).getNews(category: widget.category);
  }

  // bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListOfPosts(
            article: snapshot.data,
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text(
                'Oops, there was an error in the server. Please try again later.'),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.amber,
            ),
          );
        }
      },
    );
  }
}

// isLoading
    //     ? Center(
    //         child: CircularProgressIndicator(
    //           color: Colors.amber,
    //         ),
    //       )
    //     : article.isNotEmpty
    //         ? ListOfPosts(
    //             article: article,
    //           )
    //         : Center(
    //             child: Text('oops there was an error in server , try later'),
    //           );