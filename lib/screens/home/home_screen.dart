import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
              borderRadius: BorderRadius.circular(50),
            ),
            filled: true,
            fillColor: ProductColors.backgroundColor,
            hintText: AppLocalizations.of(context).home_screen_search_in_mercado_libre,
            prefixIcon: const Icon(Icons.search_outlined),
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          ),
          onTap: () {
            showSearch(
              context: context,
              delegate: ProductSearchDelegate(productBloc: productBloc),
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.search,
              size: 100,
              color: Colors.grey,
            ),
            const SizedBox(height: 20),
            Text(
              AppLocalizations.of(context).home_screen_search_products,
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
