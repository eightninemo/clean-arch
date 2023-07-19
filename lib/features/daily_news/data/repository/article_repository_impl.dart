import 'package:cleanarch/core/resources/data_state.dart';
import 'package:cleanarch/features/daily_news/data/models/article_model.dart';
import 'package:cleanarch/features/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() {
    // TODO: implement getNewsArticles
    throw UnimplementedError();
  }
}
