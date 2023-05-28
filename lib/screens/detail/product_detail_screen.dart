import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:presentation/shared/theme.dart';

class ProducDetailScreen extends StatelessWidget {
  ProducDetailScreen({super.key, required this.product});
  static const routeName = 'product-detail-screen';

  final Product product;
  final _priceFormat = NumberFormat("\$ #,##0", "es_CO");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product"),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_outline),
            tooltip: 'Favorites',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Added to favorites')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Search')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            tooltip: 'Add to cart',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Added to cart')));
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
                color: ProductColors.backgroundColor
              ),
              Center(
                child: Image.network(
                  product.thumbnail,
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                )
              ),
              const Divider(
                height: 20,
                color: ProductColors.backgroundColor
              ),
              Text(_priceFormat.format(product.price),
                style: const TextStyle(
                  fontSize: 25
                ),
              ),
              const Divider(
                height: 20,
                color: ProductColors.backgroundColor
              ),
              Text("Vendido por ${product.seller.nickname}",
                style: const TextStyle(
                  color: ProductColors.secondaryColor
                ),
              ),
              const Divider(
                height: 20,
                color: ProductColors.backgroundColor
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                      (states) => ProductColors.secondaryColor
                    ),
                    foregroundColor: MaterialStateColor.resolveWith(
                      (states) => ProductColors.backgroundColor
                    )
                  ),
                  onPressed: () {},
                  child: const Text("Comprar ahora"),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                      (states) => ProductColors.secondaryColor.shade50
                    ),
                    foregroundColor: MaterialStateColor.resolveWith(
                      (states) => ProductColors.secondaryColor
                    )
                  ),
                  onPressed: () {},
                  child: const Text("Agregar al carrito"),
                ),
              )
            ],
          )
        )
      ),
    );
  }
}