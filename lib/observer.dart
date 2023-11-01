// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class SimpleBlocObserver extends BlocObserver {
//   const SimpleBlocObserver();
//
//   @override
//   void onCreate(BlocBase<dynamic> bloc) {
//     super.onCreate(bloc);
//     print('onCreate -- bloc: ${bloc.runtimeType}');
//   }
//
//   @override
//   void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
//     super.onEvent(bloc, event);
//     print('onEvent -- bloc: ${bloc.runtimeType}, event: $event');
//   }
//
//   @override
//   void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
//     super.onChange(bloc, change);
//     print('onChange -- bloc: ${bloc.runtimeType}, change: $change');
//   }
//
//   @override
//   void onTransition(
//       Bloc<dynamic, dynamic> bloc,
//       Transition<dynamic, dynamic> transition,
//       ) {
//     super.onTransition(bloc, transition);
//     print('onTransition -- bloc: ${bloc.runtimeType}, transition: $transition');
//   }
//
//   @override
//   void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
//     print('onError -- bloc: ${bloc.runtimeType}, error: $error');
//     super.onError(bloc, error, stackTrace);
//   }
//
//   @override
//   void onClose(BlocBase<dynamic> bloc) {
//     super.onClose(bloc);
//     print('onClose -- bloc: ${bloc.runtimeType}');
//   }
// }

import 'package:bloc/bloc.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('onError -- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('onClose -- ${bloc.runtimeType}');
  }
}
