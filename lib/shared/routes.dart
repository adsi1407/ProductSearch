import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/dependencyInjection/dependency_injection.dart';
import 'package:presentation/screens/bloc/home_bloc.dart';
import 'package:presentation/screens/home_screen.dart';

class AppRouter {
  static Map<String, WidgetBuilder> routes = {
    HomeScreen.routeName: (context) => BlocProvider(
          create: (_) => getIt<HomeBloc>(),
          child: const HomeScreen(),
        ),
  };
}