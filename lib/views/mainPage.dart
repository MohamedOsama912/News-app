import 'package:flutter/material.dart';
import 'package:news_app/models/horiz_box.dart';
import '../units/horiz_cat_list.dart';
import '../units/ver_list_builder.dart';

class MainPageScreen extends StatelessWidget {
  final List<CatigoryModel> catList = [
    const CatigoryModel(title: 'Business', image: 'assets/business.jpg'),
    const CatigoryModel(
        title: 'Entertainment', image: 'assets/entertainment.jpg'),
    const CatigoryModel(title: 'General', image: 'assets/general.jpg'),
    const CatigoryModel(title: 'Medical', image: 'assets/medical.jpg'),
    const CatigoryModel(title: 'Science', image: 'assets/science.jpg'),
    const CatigoryModel(title: 'Sports', image: 'assets/sports.jpg'),
    const CatigoryModel(title: 'Technology', image: 'assets/tech.jpg'),
  ];

  MainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'News ',
                  style: TextStyle(fontSize: 35, color: Colors.black),
                ),
                Text(
                  'App',
                  style: TextStyle(fontSize: 35, color: Colors.yellow),
                )
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: HorizCatigoryListView(catList: catList),
                ),
                const SliverToBoxAdapter(
                    child: SizedBox(
                  height: 12,
                )),
                const VerticalNewsListViewBuilder(category: 'general')
              ],
            ),
          ),
        ));
  }
}
