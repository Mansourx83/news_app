class ArticlesModel {
  final String? photo;
  final String script;
  final String? subScript;

  ArticlesModel(
      {required this.photo, required this.script, required this.subScript});
  factory ArticlesModel.fromjson(json) {
    return ArticlesModel(
        photo: json['urlToImage'],
        script: json['title'],
        subScript: json['description']);
  }
}
