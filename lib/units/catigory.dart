import 'package:flutter/material.dart';
import 'package:news_app/models/horiz_box.dart';

import '../views/cat_view.dart';

class CatigoryUnit extends StatelessWidget {
  const CatigoryUnit({super.key, required this.catigoryInfo});
  final CatigoryModel catigoryInfo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return CategoryView(category: catigoryInfo.title);
          },
        ));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          //measurments
          width: 125,
          height: 120,
          //shape
          decoration: BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
                image: AssetImage(catigoryInfo.image), fit: BoxFit.fill),
          ),
          // title
          child: Center(
              child: Text(
            catigoryInfo.title,
            style: const TextStyle(fontSize: 20),
          )),
        ),
      ),
    );
  }
}
