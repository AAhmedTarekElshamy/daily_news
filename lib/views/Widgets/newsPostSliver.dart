import 'package:daily_news/Models/newsPostModel.dart';
import 'package:daily_news/views/Widgets/newsPostWidget.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../services/news_service.dart';

class NewsPostSliverList extends StatelessWidget {
  NewsPostSliverList({super.key, required this.articles});

 final List<newsPostModel> articles  ;

 @override
  Widget build(BuildContext context) {
    return  SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount:articles.length,
        (context, index) => newsPostWidget(newsModel: articles[index]),
      ),
    );
  }
}











/*final List<newsPostModel> newsPostList = [
    newsPostModel(
        newsImg:
            'lib/images/newsPostImages/Artists-for-Palestine-Canada-Lede-Image.jpg',
        newsTitle:
            '4,000+ Canadian Artists and Cultural Workers Sign Palestine Solidarity Letter',
        newsDescription:
            'As artists, cultural workers, and academics, we stand strong in support of the Palestinian struggle for freedom and against all forms of racism and settler-colonial violence,” the authors write.'),
    newsPostModel(
        newsImg: 'lib/images/newsPostImages/dollar.jpg',
        newsTitle:
            'كيف تواجه مصر أزمة الدولار؟.. ولماذا حذر السيسي من تحرير سعر الصرف؟ ',
        newsDescription:
            'القاهرة، مصر (CNN) -- واصلت الحكومة المصرية اتخاذ قرارات لترشيد الدولار، كان آخرها قرار سلطة الطيران المدني بوقف العمل بنظام تذاكر "السوتو"، وسبقه قرار من البنك المركزي بوقف استخدام البطاقات مسبقة الدفع في التعاملات الدولية سواء للسحب النقدي خارج البلاد أو للشراء الإلكتروني بالعملات الأجنبية.'),
    newsPostModel(
        newsImg: 'lib/images/newsPostImages/EgyptNationalAlliance.jpg',
        newsTitle:
            'Egypt\'s National Alliance for Civil Development collaborates on Gaza aid initiatives',
        newsDescription:
            'In an urgent news report, "Al-Qahira Al-Ikhbariya" channel stated that Egypt is preparing two new aid convoys, organized by the National Alliance for Civil Development'),
    newsPostModel(
        newsImg: 'lib/images/newsPostImages/gaza.jpg',
        newsTitle:
            'Babies evacuated from Gaza’s Shifa Hospital arrive in Egypt, state-run media say',
        newsDescription:
            'The Palestinian Red Crescent rescue service said it was transporting 28 premature babies from a hospital in southern Gaza to another across the border in Egypt on Monday.'),
  ];
*/