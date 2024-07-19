import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Model/articles_Model.dart';
import 'package:news_app/Services/NewsServices.dart';
import 'package:news_app/Widgets/News_Tiltle.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticlesModel> articles = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await Newsservices(dio: Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()))
        : SliverList(
            delegate: SliverChildBuilderDelegate(childCount: articles.length,
                (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 22),
              child: NewsTile(articlesModel: articles[index]),
            );
          }));
  }
}
