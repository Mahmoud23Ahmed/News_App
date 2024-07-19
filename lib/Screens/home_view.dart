import 'package:flutter/material.dart';
import 'package:news_app/Widgets/Category_ListView.dart';
import 'package:news_app/Widgets/News_ListView.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool showCategories = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            setState(() {
              showCategories = !showCategories;
            });
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Cloud",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            if (showCategories)
              const SliverToBoxAdapter(
                child: Category_ListView(),
              ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 22,
              ),
            ),
            NewsListView(),
          ],
        ),
      ),
    );
  }
}
