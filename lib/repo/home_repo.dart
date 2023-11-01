import 'package:news_app/models/SourcesResponse.dart';
import 'package:news_app/models/newsResponse.dart';

abstract class HomeRepo {
  Future<SourcesResponse> getSources(String catId);

  Future<NewsResponse> getNewsData(String sourceId);
}
