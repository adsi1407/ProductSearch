part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {
  const HomeState();
  @override
  List<Object> get props => [];
}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {
  const HomeSuccess({required this.products});

  final List<Product> products;

  @override
  List<Object> get props => [products];
}

class HomeError extends HomeState {
  const HomeError(this.message);
  final String message;
}