import 'package:cleanarch/config/theme/app_theme.dart';
import 'package:cleanarch/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:cleanarch/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:cleanarch/features/daily_news/presentation/pages/home/daily_news.dart';
import 'package:cleanarch/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
      create: (context) => sl()..add(const GetArticles()),
      child: MaterialApp(
        title: 'News App',
        debugShowCheckedModeBanner: false,
        theme: theme(),
        home: const DailyNews(),
      ),
    );
  }
}
