// // abstract class HomeStates {}
// //
// // class HomeInitState extends HomeStates {}
// //
// // class HomeGetSourcesLoadingState extends HomeStates {}
// //
// // class HomeGetSourcesSuccessState extends HomeStates {}
// //
// // class HomeGetSourcesErrorState extends HomeStates {}
// //
// // class HomeGetNewsLoadingState extends HomeStates {}
// //
// // class HomeGetNewsSuccessState extends HomeStates {}
// //
// // class HomeGetNewsErrorState extends HomeStates {}
// //
// // class HomeChangeSourceState extends HomeStates{}
//
// abstract class HomeStates {}
//
// class HomeInitState extends HomeStates {}
//
// class HomeGetSourcesLoadingState extends HomeStates {}
//
// class HomeGetSourcesSuccessState extends HomeStates {}
//
// class HomeGetSourcesErrorState extends HomeStates {
//   String error;
//
//   HomeGetSourcesErrorState(this.error);
// }
//
// class HomeGetNewsDataLoadingState extends HomeStates {}
//
// class HomeGetNewsDataSuccessState extends HomeStates {}
//
// class HomeGetNewsDataErrorState extends HomeStates {}
//
//
// class HomeChangeSourceState extends HomeStates{}

// abstract class HomeStates {}
//
// class HomeInitState extends HomeStates {}
//
// class HomeGetSourcesLoadingState extends HomeStates {}
//
// class HomeGetSourcesSuccessState extends HomeStates {}
//
// class HomeGetSourcesErrorState extends HomeStates {
//   String error;
//
//   HomeGetSourcesErrorState(this.error);
// }
//
// class HomeGetNewsDataLoadingState extends HomeStates {}
//
// class HomeGetNewsDataSuccessState extends HomeStates {}
//
// class HomeGetNewsDataErrorState extends HomeStates {}
//
//
// class HomeChangeSourceState extends HomeStates{}

abstract class HomeStates {}

class HomeInitState extends HomeStates {}

class HomeGetSourcesLoadingState extends HomeStates {}

class HomeGetSourcesSuccessState extends HomeStates {}

class HomeGetSourcesErrorState extends HomeStates {
  String error;

  HomeGetSourcesErrorState(this.error);
}

class HomeGetNewsDataLoadingState extends HomeStates {}

class HomeGetNewsDataSuccessState extends HomeStates {}

class HomeGetNewsDataErrorState extends HomeStates {}

class HomeChangeSourceState extends HomeStates {}
