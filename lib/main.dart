import 'package:clean_arc_practice/config/theme/app_themes.dart';
import 'package:clean_arc_practice/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:clean_arc_practice/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:clean_arc_practice/features/daily_news/presentation/pages/home/daily_news.dart';
import 'package:clean_arc_practice/features/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  await intializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticleBloc>(
      create: (context) => sl()..add(const GetArticles()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme(),
        home: const DailyNews(),
      ),
    );
  }
}