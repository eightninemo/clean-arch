// TODO: write the entity class first.

import 'package:equatable/equatable.dart';

class ArticleEntity extends Equatable {
  final String? id;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  const ArticleEntity({
    this.author,
    this.content,
    this.description,
    this.id,
    this.publishedAt,
    this.title,
    this.url,
    this.urlToImage,
  });

  @override
  List<Object?> get props {
    return [
      id,
      author,
      content,
      description,
      publishedAt,
      title,
      url,
      urlToImage
    ];
  }
}
