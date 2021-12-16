import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/shared/themes/themes.dart';
import 'package:asuka/asuka.dart' as asuka;

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Resenha",
      theme: Themes.light(),
      darkTheme: Themes.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      navigatorObservers: [
        asuka.asukaHeroController,
        Modular.get<FirebaseAnalyticsObserver>(),
      ],
      builder: asuka.builder,
    ).modular();
  }
}
