import 'package:daily_news/services/news_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'views/Screens/home_page.dart';

void main() {
  

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
      home:  HomePage(),
      
    );
  }
}

