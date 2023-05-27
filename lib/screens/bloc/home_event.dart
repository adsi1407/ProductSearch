part of 'home_bloc.dart';

@immutable
abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class GetProducts extends HomeEvent {
  const GetProducts({
    required this.searchText,
  });

  final String searchText;

  @override
  List<Object> get props => [searchText];
}