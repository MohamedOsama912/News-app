class ArticleModel
{
  final String title;
  final String? image;
  final String? description;
  final String url;

  ArticleModel({required this.title,required this.image,required this.description , required this.url});

  factory ArticleModel.fromJSON(json)
  {
    return  ArticleModel(title: json['title'], image: json['urlToImage'], description: json['description'], url: json['url']);
  }

}