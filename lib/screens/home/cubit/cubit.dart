import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/models/SourcesResponse.dart';
import 'package:news_app/models/newsResponse.dart';
import 'package:news_app/repo/home_repo.dart';
import 'package:news_app/screens/home/cubit/states.dart';
import 'package:news_app/shared/components/constants.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeRepo homeRepo;

  HomeCubit(this.homeRepo) : super(HomeInitState());

  static HomeCubit get(context) => BlocProvider.of(context);

  List<Sources> sourcesList = [];
  List<Articles> articles = [];
  int selectedIndex = 0;

  changeSource(int value) {
    selectedIndex = value;
    emit(HomeChangeSourceState());
  }

  Future<void> getSources(String catId) async {
    emit(HomeGetSourcesLoadingState());
    try {
      SourcesResponse sourcesResponse = await homeRepo.getSources(catId);
      sourcesList = sourcesResponse.sources ?? [];
      emit(HomeGetSourcesSuccessState());
    } catch (e) {
      emit(HomeGetSourcesErrorState(e.toString()));
      throw Exception();
    }
  }

  Future<void> getNewsData() async {
    emit(HomeGetNewsDataLoadingState());
    try {
      NewsResponse newsResponse =
          await homeRepo.getNewsData(sourcesList[selectedIndex].id ?? "");
      articles = newsResponse.articles ?? [];
      emit(HomeGetNewsDataSuccessState());
    } catch (e) {
      emit(HomeGetNewsDataErrorState());
    }
  }

  static Future<NewsResponse?> searchNews(String query) async {
    try {
      Uri url = Uri.https(BASE_URL, API_KEY, {"apiKey": API_KEY, "q": query});
      http.Response response = await http.get(url);
      var jsonData = jsonDecode(response.body);
      NewsResponse newsResponse = NewsResponse.fromJson(jsonData);
      return newsResponse;
    } catch (e) {
      throw Exception();
    }
  }
}
