import 'package:flutter/material.dart';
import '../units/ver_list_builder.dart';


class CategoryView extends StatelessWidget {
final String category ;

  const CategoryView({super.key, required this.category});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
           slivers: [
             VerticalNewsListViewBuilder(category: category)
           ],
         ),
       ),
    );
  }
}