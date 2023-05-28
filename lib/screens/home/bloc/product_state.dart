part of 'product_bloc.dart';

@immutable
abstract class ProductState extends Equatable {
  const ProductState();
  @override
  List<Object> get props => [];
}

class ProductLoading extends ProductState {}

class ProductSuccess extends ProductState {
  const ProductSuccess({required this.products});

  final List<Product> products;

  @override
  List<Object> get props => [products];
}

class ProductError extends ProductState {
  const ProductError(this.message);
  final String message;
}
