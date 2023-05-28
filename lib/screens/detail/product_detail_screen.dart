import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:presentation/shared/theme.dart';

class ProducDetailScreen extends StatelessWidget {
  ProducDetailScreen({required this.product, super.key});
  static const routeName = 'product-detail-screen';

  final Product product;
  final _priceFormat = NumberFormat(r'$ #,##0', 'es_CO');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).product_detail_screen_product),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_outline),
            tooltip: AppLocalizations.of(context).product_detail_screen_favorites,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(
                    AppLocalizations.of(context).product_detail_screen_added_to_favorites,
                  ),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: AppLocalizations.of(context).product_detail_screen_search,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(AppLocalizations.of(context).product_detail_screen_search)),);
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            tooltip: AppLocalizations.of(context).product_detail_screen_add_to_cart,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(
                    AppLocalizations.of(context).product_detail_screen_added_to_cart,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(product.title),
              const Divider(
                height: 20,
                color: ProductColors.backgroundColor,
              ),
              Center(
                child: Image.network(
                  product.thumbnail,
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
              const Divider(
                height: 20,
                color: ProductColors.backgroundColor,
              ),
              Text(_priceFormat.format(product.price),
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
              const Divider(
                height: 20,
                color: ProductColors.backgroundColor,
              ),
              Text('${AppLocalizations.of(context).product_detail_screen_sold_by} ${product.seller.nickname}',
                style: const TextStyle(
                  color: ProductColors.secondaryColor,
                ),
              ),
              const Divider(
                height: 20,
                color: ProductColors.backgroundColor,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                      (states) => ProductColors.secondaryColor,
                    ),
                    foregroundColor: MaterialStateColor.resolveWith(
                      (states) => ProductColors.backgroundColor,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(AppLocalizations.of(context).product_detail_screen_buy_now),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                      (states) => ProductColors.secondaryColor.shade50,
                    ),
                    foregroundColor: MaterialStateColor.resolveWith(
                      (states) => ProductColors.secondaryColor,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(AppLocalizations.of(context).product_detail_screen_add_to_cart),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
