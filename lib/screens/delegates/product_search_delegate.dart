import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/screens/bloc/product_bloc.dart';

class ProductSearchDelegate extends SearchDelegate {
  ProductSearchDelegate({required this.productBloc});

  final ProductBloc productBloc;

  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(
      icon: const Icon(Icons.clear),
      onPressed: () {
        if (query.isEmpty) {
          close(context, null);
        } else {
          query = "";
        }
      }
    )
  ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
    icon: const Icon(Icons.arrow_back),
    onPressed: () => close(context, null)
  );

  @override
  Widget buildResults(BuildContext context) {
    productBloc.add(GetProducts(searchText: query));

    return BlocBuilder<ProductBloc, ProductState>(
      bloc: productBloc,
      builder: (BuildContext context, ProductState state) {
        if(state is ProductLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if(state is ProductError) {
          return Center(
            child: Text(state.message)
          );
        }
        if (state is ProductSuccess) {
          return ListView.builder(
            itemCount: state.products.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.products[index].title),
              );
            }
          );
        }
        return const Scaffold();
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}