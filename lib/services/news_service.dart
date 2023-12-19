import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});
// <List<PostersModel>>
  Future getNews({required category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=df8a6324af6a47378fc877a7b8d4ac77&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articals = jsonData['articles'];
      List<ArticlesModel> Posterslist = [];
      for (var artical in articals) {
        ArticlesModel postersModel = ArticlesModel.fromjson(artical);
        Posterslist.add(postersModel);
      }
      return Posterslist;
    } catch (e) {
      return [];
    }
  }
}
