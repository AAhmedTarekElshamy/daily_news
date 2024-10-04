import 'package:daily_news/Models/newsPostModel.dart';
import 'package:flutter/material.dart';

class newsPostWidget extends StatelessWidget {
  const newsPostWidget({super.key, required this.newsModel});

  final newsPostModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: newsModel.newsImg != null
                ? Image.network(
                    newsModel.newsImg!,
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd6ohKVB9MgSY1f4pQafYHJ-C_JrEvXHxxXQ&usqp=CAU'),
          ),
          Text(
            newsModel.newsTitle,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 2,
          ),
          Text(
            newsModel.newsDescription ??'',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
