import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/layout/home_layout.dart';
import 'package:news_app/observer.dart';
import 'package:news_app/screens/home/details_screen.dart';
import 'package:news_app/screens/home/settings_tab.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SettingsView.routeName,
      routes: {
        HomeLayout.routeName: (context) => HomeLayout(),
        DetailsScreen.routeName: (context) => const DetailsScreen(),
        SettingsView.routeName: (context) => const SettingsView()
      },
    );
  }
}

