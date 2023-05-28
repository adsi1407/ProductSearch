import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/screens/bloc/product_bloc.dart';
import 'package:presentation/screens/delegates/product_search_delegate.dart';
import 'package:presentation/shared/theme.dart';

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
        title: TextField(
          readOnly: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50)
            ),
            filled: true,
            fillColor: ProductColors.backgroundColor,
            hintText: "Buscar en Mercado Libre",
            prefixIcon: const Icon(Icons.search_outlined),
            contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0)
          ),
          onTap: () {
            showSearch(
              context: context,
              delegate: ProductSearchDelegate(productBloc: bloc)
            );
          },
        ),
      ),
      body: Container()
    );
  }
}