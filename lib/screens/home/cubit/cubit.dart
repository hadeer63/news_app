// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:bloc/bloc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:http/http.dart';
// import 'package:news_app/models/SourcesResponse.dart';
// import 'package:news_app/models/newsResponse.dart';
// import 'package:news_app/repo/home_repo.dart';
// import 'package:news_app/screens/home/cubit/states.dart';
// import 'package:news_app/shared/components/constants.dart';
//
// class HomeCubit extends Cubit<HomeStates> {
//   HomeRepo repo;
//   HomeCubit(this.repo) : super(HomeInitState());
//
//
//   static HomeCubit get(context) => BlocProvider.of(context);
//   List<Sources> sourcesList = [];
//   List<Articles> articleList = [];
//   int selectedIndex = 0;
//
//   changeSource(int value) {
//     selectedIndex = value;
//     emit(HomeChangeSourceState());
//   }
//
//   Future<void> getNews(String catId) async {
//     emit(HomeGetSourcesLoadingState());
//     // Uri url = Uri.https(BASE_URL, "/v2/top-headlines/sources",
//     //     {"apiKey": API_KEY, "category": catId});
//     // Response response = await http.get(url);
//     try {
//       SourcesResponse sourcesResponse = await repo.getSources(catId);
//       sourcesList = sourcesResponse.sources ?? [];
//       //getNews(catId);
//       emit(HomeGetSourcesSuccessState());
//     } catch (e) {
//       emit(HomeGetSourcesErrorState(e.toString()));
//       throw Exception();
//     }
//
// //     Uri url = Uri.https(BASE_URL, "/v2/top-headlines/sources",
// //         {"apiKey": API_KEY, "category": catId});
// //     Response response = await http.get(url);
// //     try {
// //       var jsonData = jsonDecode(response.body);
// //       SourcesResponse data = SourcesResponse.fromJson(jsonData);
// //       sourcesList = data.sources ?? [];
// //       //getNews(catId);
// //       emit(HomeGetSourcesSuccessState());
// //     } catch (e) {
// //       emit(HomeGetSourcesErrorState());
// //       throw e;
// //     }
//   }
//
//   Future<void> getNewsData(String sourcesID) async{
//     // emit(HomeGetNewsLoadingState());
//     // Uri url=Uri.https(BASE_URL,"/v2/everything",{
//     //   "apiKey":API_KEY,
//     //   "sources":sourcesID
//     // });
//     // http.Response response=await http.get(url);
//     // try{
//     //   var jsonData=jsonDecode(response.body);
//     //   NewsResponse newsResponse=NewsResponse.fromJson(jsonData);
//     //   articleList=newsResponse.articles??[];
//     //   emit(HomeGetNewsSuccessState());
//     // }catch(e){
//     //   emit(HomeGetNewsErrorState());
//     //   throw e;
//     // }
//     emit(HomeGetNewsDataLoadingState());
//     try {
//       articleList = (await repo.getNewsData(sourcesList[selectedIndex].id ?? ""))
//               .articles ??
//           [];
//       emit(HomeGetNewsDataSuccessState());
//     } catch (e) {
//       emit(HomeGetNewsDataErrorState());
//     }
//   }
//
//   }
//
//
// //import 'package:http/http.dart' as http;
//
//
//
//
//
//
//
//
//
// //
// // import 'package:flutter_bloc/flutter_bloc.dart';
// //
// // import 'package:news_app/models/SourcesResponse.dart';
// // import 'package:news_app/models/newsResponse.dart';
// // import 'package:news_app/repo/home_repo.dart';
// // import 'package:news_app/screens/home/cubit/states.dart';
// // import 'package:news_app/screens/home/screen_model.dart';
// //
// // class HomeCubit extends Cubit<HomeStates> {
// //   HomeRepo repo;
// //
// //   HomeCubit(this.repo) : super(HomeInitState());
// //
// //   static HomeCubit get(context) => BlocProvider.of(context);
// //
// //   // List<Sources> sourcesList=[];
// //   List<Sources>sourcesList =[];
// //   List<Articles> articles = [];
// //   int selectedIndex = 0;
// //
// //   changeSource(int value) {
// //     selectedIndex = value;
// //     emit(HomeChangeSourceState());
// //   }
// //
// //   Future<void> getSources(String catId) async {
// //     emit(HomeGetSourcesLoadingState());
// //     try {
// //       SourcesResponse sourcesResponse = await repo.getSources(catId);
// //       sourcesList = sourcesResponse.sources ?? [];
// //       emit(HomeGetSourcesSuccessState());
// //     } catch (e) {
// //       emit(HomeGetSourcesErrorState(e.toString()));
// //       throw Exception();
// //     }
// //   }
// //
// //   Future<void> getNewsData() async {
// //     emit(HomeGetNewsDataLoadingState());
// //     try {
// //       articles = (await repo.getNewsData(sourcesList[selectedIndex].id ?? ""))
// //               .articles ??
// //           [];
// //       emit(HomeGetNewsDataSuccessState());
// //     } catch (e) {
// //       emit(HomeGetNewsDataErrorState());
// //     }
// //   }
// // }

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/models/SourcesResponse.dart';
import 'package:news_app/models/newsResponse.dart';
import 'package:news_app/repo/home_repo.dart';
import 'package:news_app/screens/home/cubit/states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeRepo repo;

  HomeCubit(this.repo) : super(HomeInitState());

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
      SourcesResponse sourcesResponse = await repo.getSources(catId);
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
      articles = (await repo.getNewsData(sourcesList[selectedIndex].id ?? ""))
              .articles ??
          [];
      emit(HomeGetNewsDataSuccessState());
    } catch (e) {
      emit(HomeGetNewsDataErrorState());
    }
  }
}
