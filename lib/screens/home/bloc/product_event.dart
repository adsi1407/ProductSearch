part of 'product_bloc.dart';

@immutable
abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}

class GetProducts extends ProductEvent {
  const GetProducts({
    required this.searchText,
  });

  final String searchText;

  @override
  List<Object> get props => [searchText];
}