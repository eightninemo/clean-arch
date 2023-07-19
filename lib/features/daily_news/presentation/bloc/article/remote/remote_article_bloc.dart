// ignore_for_file: avoid_print

import 'package:cleanarch/core/resources/data_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cleanarch/features/daily_news/domain/usecase/get_article.dart';
import 'package:cleanarch/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:cleanarch/features/daily_news/presentation/bloc/article/remote/remote_article_state.dart';

class RemoteArticlesBloc extends Bloc<RemoteArticlesEvent, RemoteArticleState> {
  final GetArticleUseCase _getArticleUseCase;

  RemoteArticlesBloc(this._getArticleUseCase)
      : super(const RemoteArticlesLoading()) {
    on<GetArticles>(onGetArticles);
  }

  void onGetArticles(
      GetArticles event, Emitter<RemoteArticleState> emit) async {
    final dataState = await _getArticleUseCase();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      print(dataState.data);
      emit(
        RemoteArticlesDone(dataState.data!),
      );
    }

    if (dataState is DataFailed) {
      print(dataState.error!.message);
      emit(
        RemoteArticlesError(dataState.error!),
      );
    }
  }
}
