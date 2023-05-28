import 'package:domain/domain.dart';
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
  };

  static const int _transitionDurationInMillis = 550;

  static RouteFactory onGenerateRoute = (RouteSettings settings) {
    final routeName = settings.name;

    if (routeName == ProducDetailScreen.routeName) {
      const transitionDuration =
          Duration(milliseconds: _transitionDurationInMillis);
      final arguments = settings.arguments;

      return PageRouteBuilder(
        transitionDuration: transitionDuration,
        reverseTransitionDuration: transitionDuration,
        pageBuilder: (_, animation, ___) {
          return FadeTransition(
            opacity: animation,
            child: ProducDetailScreen(product: arguments as Product)
          );
        },
      );
    }
    return null;
  };
}