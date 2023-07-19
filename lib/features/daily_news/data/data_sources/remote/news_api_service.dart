import 'package:cleanarch/core/constant/constant.dart';
import 'package:cleanarch/features/daily_news/data/models/article_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'news_api_service.g.dart'; // must be specified when retrofit generstes code.

@RestApi(baseUrl: newsAPIBaseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    @Query("apiKey") String? apiKey,
    @Query("country") String? country,
    @Query("category") String? category,
  });
}
