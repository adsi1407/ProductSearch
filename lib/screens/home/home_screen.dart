import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/screens/home/bloc/product_bloc.dart';
import 'package:presentation/screens/home/delegates/product_search_delegate.dart';
import 'package:presentation/shared/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final productBloc = context.read<ProductBloc>();

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
              delegate: ProductSearchDelegate(productBloc: productBloc)
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(
              Icons.search,
              size: 100,
              color: Colors.grey,
            ),
            SizedBox(height: 20),
            Text(
              'Búsqueda de productos',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
