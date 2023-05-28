import 'package:flutter/material.dart';

class ProducDetailScreen extends StatelessWidget {
  const ProducDetailScreen({super.key});
  static const routeName = 'product-detail-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Detail"),
      ),
      body: Container(),
    );
  }
}