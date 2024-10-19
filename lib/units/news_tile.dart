
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

import '../service/web_view_screen.dart';

class VerticalNews extends StatelessWidget {
  VerticalNews({super.key, required this.article});
  ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context){
          return WebViewScreen(articleUrl: article.url);
        },),);
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: article.image != null
                ? FadeInImage.assetNetwork(
                    placeholder: 'assets/loading.jpg',
                    image: article.image!,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                    imageErrorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        'assets/error.jpg',
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      );
                    },
                  )
                : Image.asset(
                    'assets/error.jpg', // Fallback if image is null
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            article.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            article.description ?? '--------------------------------',
            textAlign: TextAlign.left,
            maxLines: 2,
            style: const TextStyle(color: Colors.grey, fontSize: 16),
          )
        ],
      ),
    );
  }
}
