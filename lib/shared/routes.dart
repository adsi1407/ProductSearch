import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/dependencyInjection/dependency_injection.dart';
import 'package:presentation/screens/detail/product_detail_screen.dart';
import 'package:presentation/screens/home/bloc/product_bloc.dart';
import 'package:presentation/screens/home/home_screen.dart';

class AppRouter {
  static Map<String, WidgetBuilder> routes = {
    HomeScreen.routeName: (context) => BlocProvider(
          create: (_) => getIt<ProductBloc>(),
          child: const HomeScreen(),
        ),
    ProducDetailScreen.routeName: (context) => const ProducDetailScreen()
  };
}