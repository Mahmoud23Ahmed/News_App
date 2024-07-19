import 'package:dio/dio.dart';
import 'package:news_app/Model/articles_Model.dart';

class Newsservices {
  final Dio dio;

  Newsservices({required this.dio});

  Future<List<ArticlesModel>> getNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?q=trump&apiKey=a733d6df08594ca490e1264d0c7b1b89');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticlesModel> articleList = [];
    for (var article in articles) {
      ArticlesModel articlesModel = ArticlesModel(
          Image: article['urlToImage'],
          Title: article['title'],
          SubTitle: article['description']);
      articleList.add(articlesModel);
    }
    return articleList;
  }
}
