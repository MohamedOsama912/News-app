import 'package:flutter/material.dart';
import 'news_tile.dart';
import 'package:news_app/models/article_model.dart';

class VerticalNewsListView extends StatelessWidget {
  // for content view
  List<ArticleModel> articles;

  VerticalNewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return VerticalNews(article: articles[index]);
        },
      ),
    );
  }
}
