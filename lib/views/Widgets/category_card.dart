import 'package:flutter/material.dart';

import '../../Models/CategoryModel.dart';
import 'categoryView.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category, });
  final CategoreyModel category;


  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ( )=>Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => categoryView(category: category.categoryName )),
      ),
      child: Container(
        margin: const EdgeInsets.only(left: 15),
        height: 120,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image:DecorationImage(
              fit: BoxFit.fill,
              image:AssetImage(category.img)),

        ),
        child: Center(
          child: Text(category.categoryName,style: const TextStyle(

            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),),
        ),


      ),
    );
  }
}

