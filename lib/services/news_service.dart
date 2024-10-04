
import 'package:dio/dio.dart';

import '../Models/newsPostModel.dart';

class newsService {





  final Dio dio;

 newsService(this.dio);
 Future<List<newsPostModel>?> getNews( {required String category})async{
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=2a6dbed42b6d48949a26654d40634c65&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<newsPostModel> articleList = [];

      for (var article in articles) {
        newsPostModel newsModel=newsPostModel.fromJson(article)  ;
        articleList.add(newsModel);
      }
      return articleList;
    } catch(e){
      return [];
    }
  }
}