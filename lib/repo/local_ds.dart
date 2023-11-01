import 'package:news_app/models/SourcesResponse.dart';
import 'package:news_app/models/newsResponse.dart';
import 'package:news_app/repo/home_repo.dart';

class LocalDataSource implements HomeRepo {
  @override
  Future<NewsResponse> getNewsData(String sourceId) {
    // TODO: implement getNewsData
    throw UnimplementedError();
  }

  @override
  Future<SourcesResponse> getSources(String catId) {
    // TODO: implement getSources
    throw UnimplementedError();
  }
}
