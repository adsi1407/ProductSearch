import 'package:domain/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'product_event.dart';
part 'product_state.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc({required ProductService productService})
      : _productService = productService,
        super(ProductLoading()) {
    on<GetProducts>(_searchProduct);
  }

  final ProductService _productService;
  static const String _technicalExceptionMessage = '¡Disculpa! Hubo un error. Por favor intenta de nuevo.';

  Future<void> _searchProduct(GetProducts event, Emitter<ProductState> emit) async {
    emit(ProductLoading());
    try {
      final result = await _productService.getProductsBySearchText(event.searchText);
      emit(ProductSuccess(products: result));
    } on BusinessException catch (e) {
      emit(ProductError(e.message));
    } catch (e) {
      emit(const ProductError(_technicalExceptionMessage));
    }
  }

  @override
  Future<void> close() {
    debugPrint('ProductBloc - close $_productService');
    return super.close();
  }
}
