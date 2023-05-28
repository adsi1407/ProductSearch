import 'package:flutter/material.dart';
import 'package:presentation/dependencyInjection/dependency_injection.dart';
import 'package:presentation/screens/home/home_screen.dart';
import 'package:presentation/shared/routes.dart';
import 'package:presentation/shared/theme.dart';

void main() {
  configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ligthTheme,
      initialRoute: HomeScreen.routeName,
      routes: AppRouter.routes,
    );
  }
}
