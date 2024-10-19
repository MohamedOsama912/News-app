
import 'package:flutter/cupertino.dart';
import '../models/horiz_box.dart';
import 'catigory.dart';

class HorizCatigoryListView extends StatelessWidget {
  const HorizCatigoryListView({
    super.key,
    required this.catList,
  });

  final List<CatigoryModel> catList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catList.length,
        itemBuilder: (context, index) {
          return CatigoryUnit(catigoryInfo: catList[index]);
        },
      ),
    );
  }
}
