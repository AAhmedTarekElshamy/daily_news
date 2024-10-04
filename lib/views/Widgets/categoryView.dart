import 'package:daily_news/Models/CategoryModel.dart';
import 'package:daily_news/Models/newsPostModel.dart';
import 'package:flutter/material.dart';

import 'NewsPostSliverListBuilder.dart';
class categoryView extends StatelessWidget {
  const categoryView({super.key, required this.category});
  final String category ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsPostSliverListBuilder(category: category )
        ],
      ),
    ) ;
  }
}
