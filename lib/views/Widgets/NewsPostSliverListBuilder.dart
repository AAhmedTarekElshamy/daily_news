import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../Models/newsPostModel.dart';
import '../../services/news_service.dart';
import 'newsPostSliver.dart';

class NewsPostSliverListBuilder extends StatefulWidget {
  const NewsPostSliverListBuilder({super.key, required this.category});
 final String category;
  @override
  State<NewsPostSliverListBuilder> createState() =>
      _NewsPostSliverListBuilderState();
}

class _NewsPostSliverListBuilderState extends State<NewsPostSliverListBuilder> {

  late Future<List<newsPostModel>?> future ;

  @override
  void initState() {
    // TODO: implement initState
    future= newsService(Dio()).getNews(category:widget.category);
    super.initState();
  }
  Widget build(BuildContext context) {
    return  FutureBuilder<List<newsPostModel>?>(
      future:future ,
      builder: (context, snapshot) => snapshot.hasData ?
           NewsPostSliverList(articles: snapshot.data!)
          : snapshot.hasError
              ? const SliverToBoxAdapter(
                  child: Text('oops there was an error '),
                )
              : const SliverToBoxAdapter(
                  child: Center(child: CircularProgressIndicator()),
                ),
    );
  }
}
/* isLoading == false
        ? NewsPostSliverList(
      articles: articles,
    )
        : SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));*/
