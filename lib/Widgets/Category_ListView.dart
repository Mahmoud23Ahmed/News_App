import 'package:flutter/material.dart';
import 'package:news_app/Model/Category_Model.dart';
import 'package:news_app/Widgets/CategoryCard.dart';

// ignore: camel_case_types
class Category_ListView extends StatelessWidget {
  const Category_ListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/technology.jpg', categoryName: 'Technology'),
    CategoryModel(image: 'assets/health.jpg', categoryName: 'Health'),
    CategoryModel(image: 'assets/science.jpg', categoryName: 'Science'),
    CategoryModel(
        image: 'assets/entertaiment.jpg', categoryName: 'Entertaiment'),
    CategoryModel(image: 'assets/sport.jpg', categoryName: ''),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Categorycard(
              category: categories[index],
            );
          }),
    );
  }
}
