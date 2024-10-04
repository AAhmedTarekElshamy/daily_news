import 'package:daily_news/Models/newsPostModel.dart';
import 'package:daily_news/views/Widgets/CategoriesList.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../Models/CategoryModel.dart';
import '../../services/news_service.dart';
import '../Widgets/NewsPostSliverListBuilder.dart';
import '../Widgets/newsPostSliver.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow),
            )
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CategoriesList()),
          const SliverToBoxAdapter(
              child: SizedBox(
            height: 35,
          )),
          const NewsPostSliverListBuilder(category:'general' ),
        ],
      ),
    );
  }
}

