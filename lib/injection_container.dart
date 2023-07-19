import 'package:cleanarch/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:cleanarch/features/daily_news/data/repository/article_repository_impl.dart';
import 'package:cleanarch/features/daily_news/domain/usecase/get_article.dart';
import 'package:cleanarch/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Dio
  sl.registerSingleton<Dio>(Dio());

  // dependencies
  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));

  sl.registerSingleton<ArticleRepositoryImpl>(ArticleRepositoryImpl(sl()));

  // usecases
  sl.registerSingleton<GetArticleUseCase>(GetArticleUseCase(sl()));

  // blocs
  sl.registerFactory<RemoteArticlesBloc>(() => RemoteArticlesBloc(sl()));
}
