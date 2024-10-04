import 'package:daily_news/views/Widgets/categoryView.dart';
import 'package:daily_news/views/Widgets/category_card.dart';
import 'package:daily_news/views/Widgets/newsPostWidget.dart';
 import 'package:flutter/material.dart';


import '../../Models/CategoryModel.dart';

class CategoriesList extends StatelessWidget {
   CategoriesList({super.key});



   final List<CategoreyModel> categories =[
     CategoreyModel(img:'lib/images/Categories_images/business.jpg', categoryName: 'Business'),
     CategoreyModel(img:'lib/images/Categories_images/entertainment.jpg' , categoryName: 'Entertainment'),
     CategoreyModel(img:'lib/images/Categories_images/science.jpg', categoryName:'Science'),
     CategoreyModel(img:'lib/images/Categories_images/sports.jpg', categoryName:'Sports'),
     CategoreyModel(img:'lib/images/Categories_images/technology.jpg', categoryName:'Technology'),

   ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:categories.length ,
               itemBuilder:(context,index)=>CategoryCard(category: categories[index],)
            ),
          )
           ;
  }
}
