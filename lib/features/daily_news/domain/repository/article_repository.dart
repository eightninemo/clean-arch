import 'package:cleanarch/core/resources/data_state.dart';
import 'package:cleanarch/features/daily_news/domain/entities/articles.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}
