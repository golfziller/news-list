import 'package:json_annotation/json_annotation.dart';

part 'news_response.g.dart';

@JsonSerializable()
class NewResponse {
  final String status;
  final String? message;
  final int totalResults;
  final List<Article> articles;

  NewResponse({
    required this.status,
    required this.message,
    required this.totalResults,
    required this.articles,
  });

  factory NewResponse.fromJson(Map<String, dynamic> json) =>
      _$NewResponseFromJson(json);
  Map<String, dynamic> toJson() => _$NewResponseToJson(this);
}

@JsonSerializable()
class Article {
  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  final Source? source;
  final String? author;
  final String title;
  final String? description;
  final String url;
  final String? urlToImage;
  final DateTime? publishedAt;
  final String? content;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}

@JsonSerializable()
class Source {
  Source({
    this.id,
    required this.name,
  });

  final String? id;
  final String name;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
  Map<String, dynamic> toJson() => _$SourceToJson(this);
}
