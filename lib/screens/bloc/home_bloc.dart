import 'package:domain/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required ProductService productService,
    @factoryParam required String searchText
  })  : _productService = productService,
        super(HomeLoading()) {
    on<GetProducts>((event, emit) async {
      emit(HomeLoading());
      try {
        final result = await _productService.getProductsBySearchText(searchText);
        emit(HomeSuccess(products: result));
      } on BusinessException catch (e) {
        emit(HomeError(e.toString()));
      } catch (e) {
        emit(const HomeError(_technicalExceptionMessage));
      }
    });
  }

  final ProductService _productService;
  static const String _technicalExceptionMessage = "Sorry! There was an error.";

  @override
  Future<void> close() {
    debugPrint('HomeBloc - close $_productService');
    return super.close();
  }
}