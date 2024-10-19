import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  const NewsService(this.dio);
  final Dio dio;

// dont forget to make try and catch exceptions here

  Future<List<ArticleModel>> getNews({required String category}) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?category=$category&apiKey=1a097aa98bb54aabb314720431a8555b');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> newsArticles = jsonData['articles'];

    List<ArticleModel> articlesObj = [];

    for (var x in newsArticles) {
      ArticleModel armodel = ArticleModel.fromJSON(x);
      articlesObj.add(armodel);
    }
    return articlesObj;
  }
}
