import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/screens/detail/product_detail_screen.dart';
import 'package:presentation/screens/home/bloc/product_bloc.dart';

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
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Icon(
                    Icons.error,
                    size: 100,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    state.message,
                    style: const TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            ),
          );
        }
        if (state is ProductSuccess) {
          return ListView.builder(
            itemCount: state.products.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.products[index].title),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    ProducDetailScreen.routeName,
                    arguments: state.products[index]
                  );
                },
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