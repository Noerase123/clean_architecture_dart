import 'package:clean_arc_practice/core/resources/data_state.dart';
import 'package:clean_arc_practice/features/daily_news/domain/entities/article.dart';

abstract class ArticleRepository {
  
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}