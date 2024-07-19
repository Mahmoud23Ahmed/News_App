import 'package:flutter/material.dart';
import 'package:news_app/Model/Category_Model.dart';

class Categorycard extends StatelessWidget {
  const Categorycard({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 85,
        width: 150,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(category.image)),
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            category.categoryName,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
