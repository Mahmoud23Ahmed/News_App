import 'package:flutter/material.dart';
import 'package:news_app/Screens/home_view.dart';
import 'package:dio/dio.dart';
import 'package:news_app/Services/NewsServices.dart';

void main() {
  Newsservices(dio: Dio()).getNews();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeView());
  }
}
