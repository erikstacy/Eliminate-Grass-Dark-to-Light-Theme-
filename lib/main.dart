import 'package:eliminate_grass_project/screens/main_screen.dart';
import 'package:eliminate_grass_project/screens/splash_screen.dart';
import 'package:eliminate_grass_project/services/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(),
      child: OurApp(),
    );
  }
}

class OurApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final theme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      title: 'Eliminate Grass Project',
      initialRoute: SplashScreen.id,
      routes: {
        MainScreen.id: (context) => MainScreen(),
        SplashScreen.id: (context) => SplashScreen(),
      },
      theme: theme.getTheme(),
    );
  }
}