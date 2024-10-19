import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/units/ver_news_list.dart';
import '../service/new_serv.dart';

class VerticalNewsListViewBuilder extends StatefulWidget {
  const VerticalNewsListViewBuilder({super.key, required this.category});
 final String category;
  @override
  State<VerticalNewsListViewBuilder> createState() => _VerticalNewsListViewBuilderState();
}

class _VerticalNewsListViewBuilderState extends State<VerticalNewsListViewBuilder> {

  var futureRequest;
  @override
  void initState() {
    super.initState();
    futureRequest = NewsService(Dio()).getNews(category: widget.category);

  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: futureRequest,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return VerticalNewsListView(articles: snapshot.data ?? []);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text('oops there was an error'),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}


