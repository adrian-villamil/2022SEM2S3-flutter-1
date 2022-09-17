class ArticuloModel {
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  ArticuloModel({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory ArticuloModel.fromJson(Map<String, dynamic> json) => ArticuloModel(
        author: json["author"] ?? '',
        title: json["title"] ?? '',
        description: json["description"] ?? '',
        url: json["url"] ?? '',
        urlToImage: json["urlToImage"] ?? '',
        publishedAt: json["publishedAt"] ?? '',
        content: json["content"] ?? '',
      );
}
