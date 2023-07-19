import 'package:cleanarch/core/resources/data_state.dart';
import 'package:cleanarch/core/usecase/usecase.dart';
import 'package:cleanarch/features/daily_news/domain/entities/articles.dart';
import 'package:cleanarch/features/daily_news/domain/repository/article_repository.dart';

// use case gets data from the repo

class GetArticleUseCase
    implements UseCase<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;

  GetArticleUseCase(this._articleRepository);
  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) {
    return _articleRepository.getNewsArticles();
  }
}
