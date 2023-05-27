import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/screens/bloc/product_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _textCrlProductSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ProductBloc>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Product'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: BlocConsumer<ProductBloc, ProductState>(
            bloc: bloc,
            builder: (context, state) {
              return Stack(
                children: [
                  Column(
                    children: [
                      TextFormField(
                        controller: _textCrlProductSearch,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          bloc.add(GetProducts(searchText: _textCrlProductSearch.text));
                        },
                        child: const Text("Buscar")
                      )
                    ],
                  ),
                ],
              );
            },
            listener: (context, state) {
              if(state is ProductError) {
                ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.message)));
              }
            },
          )
        ),
      ),
    );
  }
}