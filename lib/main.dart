import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/layout/home_layout.dart';
import 'package:news_app/models/testo_model.dart';
import 'package:news_app/observer.dart';
import 'package:news_app/provider/my_provider.dart';
import 'package:news_app/screens/home/details_screen.dart';
import 'package:news_app/screens/home/settings_tab.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  Testo test1 = Testo("1", "hadeer", 21);
  Testo test2 = Testo("1", "hadeer", 21);
  print(test1.hashCode);
  print(test2.hashCode);
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => MyProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(pro.languageCode),
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

